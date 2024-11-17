import UIKit

struct Person {
    let firstName: String?
    let lastName: String?
    
    enum Errors: Error {
        case firstNameIsNil
        case lastNameIsNil
        case bothNamesAreNil
    }
    
    func getFullName() throws -> String {
        switch(firstName, lastName) {
        case(.none, .none):
            throw Errors.bothNamesAreNil
        case(.none, .some):
            throw Errors.firstNameIsNil
        case(.some, .none):
            throw Errors.lastNameIsNil
        case let (.some(firstName), .some(lastName)):
            return "\(firstName) \(lastName)"
        }
    }
}

let aungaung = Person(firstName: "Aung", lastName: nil)

do {
    let fullName = try aungaung.getFullName()
} catch let e{
    "Got an error = \(e)"
}

let kyawKyaw = Person(firstName: nil, lastName: nil)

do {
    let fullName = try kyawKyaw.getFullName()
} catch Person.Errors.firstNameIsNil {
    "First Name is nil"
} catch Person.Errors.lastNameIsNil {
    "Last Name is nil"
} catch Person.Errors.bothNamesAreNil {
    "Both names are nil"
} catch {
    "Some other errors"
}

struct Car {
    let manufacturer: String
    
    //define errors
    enum Errors: Error {
        case invalidManufacturer
    }
    
    //throws syntax
    init(manufacturer: String) throws {
        if manufacturer.isEmpty {
            //throw this error
            throw Car.Errors.invalidManufacturer
        }
        self.manufacturer = manufacturer
    }
}

do {
    //do this code
    //try keyword is used when calling functions or methods that can throw errors
    //throws ပါတဲ့ func တွေမှာ try ကို သုံးပြီး ပြန်ခေါ်ပေးရမယ်။
    let car1 =  try Car(manufacturer: "")
} catch Car.Errors.invalidManufacturer{ //if there are errors the code will run catch
    "Invalid Manufacturer"
} catch {
    "Other errors"
}

struct Dog {
    let isSleeping: Bool
    let isBarking: Bool
    
    enum BarkingErrors: Error {
        case CannotBark
    }
    
    enum SleepingErrors: Error {
        case CannotSleep
    }
    
    func bark() throws {
        if isSleeping {
            throw Dog.BarkingErrors.CannotBark
        }
        "Bark"
    }
    
    func sleep() throws {
        if isBarking {
            throw Dog.SleepingErrors.CannotSleep
        }
        "Sleep"
    }
    
    func barkAndSleep() throws{
        try bark()
        try sleep()
    }
}

let dog = Dog(isSleeping: true, isBarking: false)

do {
    try dog.sleep()
} catch Dog.BarkingErrors.CannotBark,
        Dog.SleepingErrors.CannotSleep {
    "Cannot and sleep"
} catch {
    "Other errors"
}


