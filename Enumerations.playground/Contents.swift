import UIKit

enum Animals {
    case cat
    case dog
    case rabbit
    case bird
}

let animal1 = Animals.cat
let animal2 = Animals.dog
let animal3 = Animals.rabbit

func describleAnimal(_ animal: Animals) {
    switch animal {
    case .cat:
        "This is a cat"
    case .dog:
        "This is a dog"
    case .bird:
        "This is a bird"
    default:
        "Something else"
    }
}

describleAnimal(Animals.bird)
