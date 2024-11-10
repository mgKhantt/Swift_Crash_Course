import Foundation

//Difference Between Struct And Class
struct Data {
    var name: String
    var age: Int
    var company: String
}

var aungaung = Data(name: "Aung Aung", age: 20, company: "Apple")
var kyawkyaw = Data(name: "Kyaw Kyaw", age: 22, company: "Google")

var aungaungCopyData = aungaung
aungaungCopyData.company = "Microsoft"
aungaung.company

class PersonData {
    var name: String
    var age: Int
    var company: String
    
    init(name: String, age: Int, company: String) {
        self.name = name
        self.age = age
        self.company = company
    }
}

var maungmaung = PersonData(name: "Maung Maung", age: 30, company: "Amazon")
maungmaung.company
var maungmaungCopyPersonData = maungmaung
maungmaungCopyPersonData.company = "IBM"
maungmaungCopyPersonData.company
