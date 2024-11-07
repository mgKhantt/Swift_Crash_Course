import Foundation

//Normal Function

//func add(_ num1 : Int, _ num2 : Int) -> Int {
//    return num1 + num2
//}
//
//add(10, 20)



//Closure
//let add : (Int, Int) -> Int = {
//    (lhs : Int, rhs : Int) -> Int in
//     lhs + rhs
//}
//add(10, 20)

func customAdd(
    _ lhs : Int,
    _ rhs : Int,
    using forClosure : (Int, Int) -> Int
) -> Int {
    forClosure(lhs, rhs)
}

//Style 1
//customAdd(20, 30, using: {
//    (lhs : Int, rhs : Int) -> Int in
//    lhs + rhs
//})

//Style 2
//customAdd(20, 30) {
//    (lhs : Int, rhs : Int) -> Int in
//    lhs + rhs
//}

//Style 3
//customAdd(20, 30) {
//    (lhs, rhs) in
//    lhs + rhs
//}

//Style 4
//customAdd(20, 30) {
//    $0 + $1
//}


func addValue(_ value:Int) -> Int {
    return value + 10
}

addValue(10)

///
func addValue20(value:Int) -> Int {
    value + 20
}

func doAddition(on value:Int, using function: (Int) -> Int) -> Int {
    function(value)
}
//this is closure data type (Int) -> Int
//thi is parameter for closure (value: Int)
///function: (Int) -> Int: This parameter expects a closure or function that takes an Int and returns an Int. It represents the custom addition operation you want to perform on value

//customAdd(20, 30) {
//    (lhs, rhs) in
//    lhs + rhs
//}

doAddition(on: 20) { (value) in
    value + 20
}

doAddition(on: 10, using: {
    num in num
})

doAddition(on: 10, using: addValue20(value:))
///https://chatgpt.com/share/672c8cf0-7998-8007-beb6-0f338801c01c
///
func printLine(on letter:String, using function: (String) -> String) -> String {
    function(letter)
}

let reuslt = printLine(on: "Hello Swift") { (letter) in
    letter
}

print(reuslt)

///https://medium.com/@bakshioye/closure-in-swift-the-painful-one-7daff52a6e3f
///closure explaination

typealias closureType = (String) -> String
let myNickname: closureType = { "I am Shubham Bakshi a.k.a. \($0)" }
myNickname("Boxy")

