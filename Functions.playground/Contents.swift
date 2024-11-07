import UIKit

@discardableResult
func myCustomAdd(
    _ lhs : Int,
    _ rhs : Int
) -> Int {
    lhs + rhs
}

myCustomAdd(20, 10)

//external para and internal para

func complicatedFunction(externalPara internalPara : Int) -> Int {
    
    func mainLogic(internalPara : Int) ->Int {
        internalPara + 2
    }
    
    return mainLogic(internalPara: internalPara + 4)
}

complicatedFunction(externalPara: 5)

//function with deaful para
func getFullName(firstName : String = "Kyaw", lastName : String = "Gyi") {
    print("\(firstName) \(lastName)")
}

getFullName(lastName: "Aung")
