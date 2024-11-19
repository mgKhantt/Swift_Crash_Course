import Foundation

let numbers = [1, 2, 3, 4]
numbers.first
numbers.last
numbers.count
numbers.map(-)

for value in numbers {
    value
}

for value in numbers where value % 2 == 0 {
    value
}

let mapArray = numbers.map { (value: Int) -> Int in
    value * 2
}

mapArray
numbers
