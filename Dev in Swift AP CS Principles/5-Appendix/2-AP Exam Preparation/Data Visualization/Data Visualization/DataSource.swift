/*************************************
 
 Do not modify this file.
 
 *************************************/

import Foundation

class DataSource<T: Codable> {
    
    public struct DataSourceError: Error {
        let reason: String
    }
    
    private var _itemList: [T]?
    
    private func readBackingStore(key: String) throws -> [T]? {
        let documentDirectoryURL = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        let archiveURL = documentDirectoryURL.appendingPathComponent(key)
        let data: Data!
        do {
            data = try Data(contentsOf: archiveURL)
        } catch {
            if let bundlePath = Bundle.main.url(forResource: key, withExtension: "json") {
                try FileManager.default.copyItem(at: bundlePath, to: archiveURL)
                return try readBackingStore(key: key)
            } else {
                throw DataSourceError(reason: "It looks as though you may have deleted the data.json file from the project.")
            }
        }
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted({let df = DateFormatter(); df.dateStyle = .short; return df}())
        let array = try decoder.decode([T].self, from: data)
        return array
    }
    
    private func write(_ array: [T], backingStoreKey key: String) throws {
        let coder = JSONEncoder()
        coder.outputFormatting = .prettyPrinted
        let arrayData = try coder.encode(array)
        let documentDirectoryURL = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        let archiveURL = documentDirectoryURL.appendingPathComponent(key)
        try arrayData.write(to: archiveURL)
    }
        
    var items: [T] {
        if _itemList == nil {
            var errorMessage: String?
            
            do {
                _itemList = try readBackingStore(key: "data")
            } catch let err as DataSourceError {
                errorMessage = err.reason
            } catch let err as DecodingError {
                switch err {
                case .keyNotFound(let key, _):
                    errorMessage = "Key not found: \"\(key.stringValue)\""
                case .dataCorrupted(let context):
                    var description = context.debugDescription
                    if let ns = context.underlyingError,
                        let extra = (ns as NSError).userInfo[NSDebugDescriptionErrorKey] {
                        description += " (\(extra))"
                    }
                    errorMessage = description
                case .typeMismatch(_, let context):
                    errorMessage = "Type mismatch for key \"\(context.codingPath.last!.stringValue)\": \(context.debugDescription)"
                default:
                    errorMessage = err.localizedDescription
                }
            } catch {
                errorMessage = error.localizedDescription
            }
            
            if let errorMessage = errorMessage {
                print("\n\nThere was a problem decoding your JSON.")
                print(errorMessage)
                print("Make sure to delete the app off the simulator after you've fixed your JSON.\n\n")
            }
        }
        
        return _itemList!
    }
    
    func save() {
        do {
            try write(items, backingStoreKey: "data")
        } catch {
            print("*****ERROR******")
        }
    }
    
    func add(item: T) {
        var existingList = items
        existingList.append(item)
        _itemList = existingList
    }
    
}

let sharedDataSource = DataSource<DataObjectType>()
