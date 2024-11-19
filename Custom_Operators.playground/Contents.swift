import Foundation

let firstName: String? = "Foo"
let lastName: String? = "Bar"
let fullName: String? = firstName + lastName

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
