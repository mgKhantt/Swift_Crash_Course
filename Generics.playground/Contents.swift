import Foundation

func perform(_ op: (Int, Int) -> Int, on lhs: Int, and rhs: Int) -> Int {
    op(lhs, rhs)
}

perform(+, on: 10, and: 20)

let age: Int? = 20
if age != nil {
    "Age is there! How odd!"
} else {
    "Age is nil. Correct"
}

if let age {
    "Age is there. \(age)"
}

func checkAge() {
    guard let age else {
        "Age is nil. How Strange"
        return
    }
    "Age is not nil as expected. Value = \(age)"
}
checkAge()

switch age {
case .none:
    "Age has no value"
case let .some(value):
    "Age has the \(value)"
}
