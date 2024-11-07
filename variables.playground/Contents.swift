import Foundation

let oldArray = NSMutableArray(
    array: [
        "Value1",
        "Value2",
    ]
)

oldArray.add("Value3")
var newArray = oldArray
newArray.add("newValue")
oldArray
newArray

let someNames = NSMutableArray(
    array: [
        "Fool",
        "Bar",
    ]
)

func changeArray(_ array : NSArray) {
    let copy = array as! NSMutableArray
    copy.add("Baz")
}
changeArray(someNames)
someNames
