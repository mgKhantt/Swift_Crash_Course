import Foundation

protocol CanBreathe {
    func breathe()
}

struct Animal: CanBreathe {
    func breathe() {
        "Animal Breathing"
    }
}

struct Person: CanBreathe {
    func breathe() {
        "Person Breathiing"
    }
}

let dog = Animal()
dog.breathe()

let aungaung = Person()
aungaung.breathe()

protocol HasName {
    var name: String {get}
    var age: Int {get set}
}

struct Dog: HasName {
    let name: String
    var age: Int
}

var woof = Dog(name: "Spike", age: 5)
woof.name
woof.age
woof.age += 1
woof.age

