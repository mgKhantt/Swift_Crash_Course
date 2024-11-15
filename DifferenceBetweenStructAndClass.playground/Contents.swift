import Foundation

//Difference Between Struct And Class
struct StructData {
    var name: String
    var age: Int
    var company: String
}

var aungaung = StructData(name: "Aung Aung", age: 20, company: "Apple")
var kyawkyaw = StructData(name: "Kyaw Kyaw", age: 22, company: "Google")

var aungaungCopyStructData = aungaung
aungaung.company //Apple
aungaungCopyStructData.company = "Microsoft"
aungaungCopyStructData.company //Microsoft
aungaung.company //Apple

class ClassData {
    var name: String
    var age: Int
    var company: String
    
    init(name: String, age: Int, company: String) {
        self.name = name
        self.age = age
        self.company = company
    }
}

var maungmaung = ClassData(name: "Maung Maung", age: 30, company: "Amazon")
maungmaung.company //Amazon
var maungmaungCopyClassData = maungmaung
maungmaungCopyClassData.company = "IBM"
maungmaung.company //IBM
