//----------------begin-teacher------------

/*
 To see the examples below, put the resource files on your desktop, then replace <yourusername> with the user name of your account.
 */

let entireFileContents = string(fromFile: "/Users/<username>/Desktop/String Contents Example.txt")
let contentsAsArrayOfLines = lines(fromFile: "/Users/<username>/Desktop/String Contents Example.txt")

print(entireFileContents)
print(contentsAsArrayOfLines)

/*
 If you want to use an enum, declare it as `String, Codable`.
 */
enum ExampleEnum: String, Codable {
    case red
    case green
    case blue
}

/*
 All structs must be declared as `Codable`.
*/
struct ContainedStruct: Codable {
    var name: String
    var count: Int
}

/*
 A struct can contain arrays and other structs.
*/
struct ExampleComplexNestedStruct: Codable {
    let values: [Double]
    let bool: Bool
    var color: ExampleEnum
    let nested: ContainedStruct
}

let singleComplexInstance: ExampleComplexNestedStruct = structValue(fromFile: "/Users/<username>/Desktop/Complex Struct Example.json")

print(singleComplexInstance)

struct ExampleSimpleStruct: Codable {
    var value: Int
    let comment: String
}

let arrayOfSimpleInstances: [ExampleSimpleStruct] = structValues(fromFile: "/Users/<username>/Desktop/Array of Simple Structs Example.json")

print(arrayOfSimpleInstances)

/*
 Below are examples of the key-value functions.
 */

var s = stringValue(fromFile: "/Users/<username>/Desktop/Key-Value Pairs Example.txt", key: "aKey", defaultValue: "")
var i = intValue(fromFile: "/Users/<username>/Desktop/Key-Value Pairs Example.txt", key: "aKey", defaultValue: 0)
var d = doubleValue(fromFile: "/Users/<username>/Desktop/Key-Value Pairs Example.txt", key: "aKey", defaultValue: 0)

var b = boolValue(fromFile: "/Users/<username>/Desktop/Key-Value Pairs Example.txt", key: "5", defaultValue: false)

s = stringValue(fromFile: "/Users/<username>/Desktop/Key-Value Pairs Example.txt", key: "anotherKey", defaultValue: "")
s = stringValue(fromFile: "/Users/<username>/Desktop/Key-Value Pairs Example.txt", key: "__keyfour", defaultValue: "")

d = doubleValue(fromFile: "/Users/<username>/Desktop/Key-Value Pairs Example.txt", key: "key_3_b", defaultValue: 0)

s = stringValue(fromFile: "/Users/<username>/Desktop/Key-Value Pairs Example.txt", key: "nonexistentKey", defaultValue: "This value doesn't come from the file.")

/*
 Below is a way to read simple values into an array without using JSON by dynamically generating key names.
 */

var strings = [String]()
var index = 0
var readString: String

repeat {
    readString = stringValue(fromFile: "/Users/<username>/Desktop/Simple Array Example.txt", key: "string\(index)", defaultValue: "")
    index += 1
    if readString != "" {
        strings.append(readString)
    } else {
        break
    }
} while true

print(strings)

var ints = [Int]()
index = 0
var readInt: Int

repeat {
    readInt = intValue(fromFile: "/Users/<username>/Desktop/Simple Array Example.txt", key: "int\(index)", defaultValue: -1)
    index += 1
    if readInt != -1 {
        ints.append(readInt)
    } else {
        break
    }
} while true

print(ints)

//----------------end-teacher--------------
