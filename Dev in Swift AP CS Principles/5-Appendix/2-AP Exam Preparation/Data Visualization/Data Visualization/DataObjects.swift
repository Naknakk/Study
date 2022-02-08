import Foundation

/*
 This is demonstration code. Modify it with your own custom types and then
 delete this comment.
 */

// TODO: Choose a data abstraction for the items you want to represent.
// You may create as many structs as you need, but there should only be
// one top-level struct that contains the others.
//
// Each item in the data list will be an item of the top-level type.
//
// Make sure that each struct you create includes ": Codable" after its name.
struct ADataItem: Codable {
    var number: Int
    var text: String
    var aOrB: AnEnum
    var date: Date
}

// If you want to use enums in your data abstraction,
// declare them as follows. Then, in your JSON, use strings
// with the names of your cases.
enum AnEnum: String, Codable {
    case a
    case b
}

//****************** DO NOT DELETE THIS CODE.
//****************** Just modify it as instructed:
// Assign your top-level type to DataObjectType to ensure that DataSource
// works correctly.
typealias DataObjectType = ADataItem
//******************
//******************


// If you want to provide ways to sort your items, make functions here
// by following these examples. You'll use these functions in the
// sort() method of Array, like this:
//
// myArray.sort(by: number(of:comesBefore:))
func number(of a: ADataItem, comesBefore b: ADataItem) -> Bool {
    return a.number < b.number
}

func text(of a: ADataItem, comesBefore b: ADataItem) -> Bool {
    return a.text < b.text
}

func date(of a: ADataItem, comesBefore b: ADataItem) -> Bool {
    return a.date < b.date
}
