import Foundation

struct Person: Equatable {
    let id: String
    let name: String
}

let aungaung = Person(id: "1", name: "Aung Aung")
let kyawkyaw = Person(id: "1", name: "Kyaw Kyaw")

if aungaung == kyawkyaw {
    "They are equal"
} else {
    "They are not equal"
}

extension Person {
    static func == (
        lhs: Self,
        rhs: Self
    ) -> Bool {
        lhs.id == rhs.id
    }
}
