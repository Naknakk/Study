import Foundation

// If you're using the list view, complete the methods below.
struct ListDataSource {
    
    // This is a copy of the data in the JSON file.
    var listData = dataItems
    
    // Sorts the data before the list is built. This function may be empty.
    mutating func sortData() {
    }
    
    // Returns the number of items to display in the list.
    func numberOfItems() -> Int {
        return 1
    }
    
    // Returns a string to display in the left-hand side of the row at the given index.
    func leftHandTextFor(index: Int) -> String {
        return "Example Item"
    }
    
    // Returns a string to display in the right-hand side of the row at the given index.
    func rightHandTextFor(index: Int) -> String {
        // Example of date printing and multiline formatting.
        // You can also use the monthDayYearString property
        // of Date for a longer format. If you pass a date
        // directly into string interpolation, it will print
        // out in UTC format.
        let today = Date()
        let importantNumber = 42
        return "\(importantNumber)\n\(today.mmddyyString)"
    }
    
    /*****************************
     
     Add helper methods below.
     
     *****************************/
    
    /*
     func aHelper() {
     
     }
     */
    
}
