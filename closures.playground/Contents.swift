// How to write closures to use functions like filter more robust

import UIKit

func filterWithClosure(closure: (Int) -> Bool, number: [Int]) -> [Int] {
    var filteredSetOfNumbers = [Int]()
    for num in number {
        //perform some condition to check here
        if closure(num) {
            filteredSetOfNumbers.append(num)
        }
    }
    return filteredSetOfNumbers
}

var sampleArray = [1,2,3,4,5,6,7,8,9]

filterWithClosure(closure: { (num) -> Bool in
    return num < 5 //filter according to this condition
}, number: sampleArray)

func greaterThanThree(value: Int) -> Bool {
    return value > 3
}

//you can now pass in functions (that takes in a Int and returns a bool)
filterWithClosure(closure: greaterThanThree, number: sampleArray)

func divisableBy2(n: Int) -> Bool {
    return n % 2 == 0
}

filterWithClosure(closure: divisableBy2, number: sampleArray)
