import Foundation

struct Person {
    let name: String
    let age: Int
}

let person1 = Person(name: "Kyaw Kyaw", age: 20)

person1.name

struct Person2 {
    let firstName: String
    let lastName: String
    let role: String
    
    //can be use a variable as a init by using {}
    var fullDocs: String {
        "\(firstName) \(lastName) is doing as a \(role)"
    }
}

let aungGyi = Person2(firstName: "Aung", lastName: "Gyi", role: "Swift Developer")
aungGyi.fullDocs

///
///can be use a variable as a init by using {}
let first: String = "Hello"
let last: String = "World"

var test: String {
    "\(first) \(last)"
}

test
///
struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int) {
        "Driving"
        currentSpeed = speed
    }
}

//difference between let and var for struct
let immutableCar = Car(currentSpeed: 20)
immutableCar.currentSpeed

var mutalbleCar = Car(currentSpeed: 10)
mutalbleCar.drive(speed: 30)
mutalbleCar.currentSpeed


