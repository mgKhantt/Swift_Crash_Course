import Foundation

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func increaseAge() {
        self.age += 1
    }
}

let person1 = Person(name: "Kyaw Kyaw", age: 22)

person1.age
person1.name

person1.increaseAge()

person1.age

class PersonData {
    private(set) var age: Int
    
    init(age: Int) {
        self.age = age
    }
    
    func increaseAgeNumber() {
        self.age += 1
    }
}

let person2 = PersonData(age: 30)
person2.age

//အခုလိုရေးလို့မရဘူး ဘာဖြစ်လို့လဲဆိုတော့ private(set) ဆိုပြီး modifier ကိုသုံးထားလို့
//person2.age += 2

person2.increaseAgeNumber()
person2.age

class Apple {
    let manufacutrer = "Apple"
    let model: String
    let year: Int
    
    // Designated Initializer 1 (Default initializer with hardcoded values)
    init() {
        self.model = "iPhone 16"
        self.year = 2024
    }
    
    // Designated Initializer 2 (With parameters)
    init(model: String, year: Int) {
        self.model = model
        self.year = year
    }
    
    convenience init(model: String) {
        self.init(
            model: model,
            year: 2024
        )
    }
    
    func testing() {
        print("This is testing")
    }
}

class iPhone: Apple {
    
    //for Initializer 1
    override init() {
        super.init(
            model: "iPhone 13",
            year: 2021
        )
    }
    
    override func testing() {
        super.testing()
        print("Adding testing 2")
    }
}

let betaIphone = iPhone()
betaIphone.testing()

let iphone13 = iPhone()
iphone13.model
iphone13.manufacutrer

let iphoneX = Apple(model: "iPhoneX", year: 2019)
iphoneX.manufacutrer


