import Foundation

let myAge = 22
let yourAge = 20

if myAge > yourAge {
    print("I am older than you")
} else if yourAge > myAge {
    print("I am younger than you")
} else {
    print("We are the same age")
}

let myMotherAge = myAge + 30
let doubleAge = myAge * 2

///1. unary prefix
let foo = !true
///2.unary postfix
let name = Optional("Value")
type(of: name)
let unaryPostfix = name!
type(of: unaryPostfix)
///3.binary infix
let result = 1 + 2
let names = "Foo " + "Boo"

let age = 30
let message : String

//if age >= 18 {
//    message = "You are an adult"
//} else {
//    message = "You are a child"
//}
//message

message = age >= 18 ? "You are an adult" : "You are a child"
