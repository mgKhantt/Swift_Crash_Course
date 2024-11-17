import Foundation

extension Int {
    func plusTwo() -> Int {
        self // to know the value of (let two)
        return self + 2
    }
}

let two = 2
two.plusTwo()

struct Person {
    let firstName: String
    let lastName: String
}

extension Person {
    init(fullName: String) {
        let components = fullName.components(separatedBy: " ")
        self.init(
            firstName: components.first ?? fullName,
            lastName: components.last ?? fullName
        )
    }
}

let aunguang = Person(firstName: "Aung", lastName: "Aung")
aunguang.firstName

let kyawgyi = Person(fullName: "Kyaw Gyi")
kyawgyi.firstName
