import Foundation

let firstName: String? = "Foo"
let lastName: String? = "Bar"
let fullName: String? = firstName + lastName

//binary infix(infix means fixing operators inside values)
func + (
    lhs: String?,
    rhs: String?
) -> String? {
    switch(lhs,rhs) {
    case(.none, .none) :
        return nil
    case let (.some(value), .none), let (.none, .some(value)):
        return value
    case let (.some(lhs), .some(rhs)) :
        return lhs + rhs
    }
}

//unary prefix
prefix operator ^
prefix func ^ (value: String) -> String {
    value.uppercased()
}

let lowerCase = "Foo Bar"
let upperCase = ^lowerCase

//unary postfix
postfix operator *
postfix func * (value: String) -> String {
    "*** \(value) ***"
}

let withStars = lowerCase*

struct Person {
    let name: String
}

struct Family {
    let members: [Person]
}

//same struct
func +(
    lhs: Person,
    rhs: Person
) -> Family {
    Family(
        members: [
            lhs,
            rhs
        ]
    )
}

//different struct
func +(
    lhs: Family,
    rhs: Person
) -> Family {
        var members = parents.members
        members.append(rhs)
        return Family(members: members)
}

//different struct with array
func +(
    lhs: Family,
    rhs: [Person]
) -> Family {
    var members = parents.members
    members.append(contentsOf: rhs)
    return Family(members: members)
}

let mom = Person(name: "Mom")
let dad = Person(name: "Dad")
let son = Person(name: "Son")
let daughter1 = Person(name: "Daughter1")
let daughter2 = Person(name: "Daughter2")

let parents = mom + dad
let parentsAndSon = parents + son
let parentsAndDaughters = parents + [daughter1, daughter2]
