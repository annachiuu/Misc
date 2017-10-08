//Binary Search as efficiently as possibly

import UIKit

var numbers = [Int]()
for i in 0...7 {
    numbers.append(i)
}

func binarySearch(searchValue: Int, array: [Int]) -> Bool {
    
    var leftIndex = 0
    var rightIndex = array.count - 1 //size of the array
    
//    if searchValue > array[rightIndex] || searchValue < array[leftIndex] {return false}
    
    while leftIndex <= rightIndex {
        
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        print("middleValue: \(middleValue), leftIndex: \(leftIndex), rightIndex: \(rightIndex), [\(array[leftIndex]),\(array[rightIndex])]")
        
        if middleValue == searchValue {
            return true
        }
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    return false
}

binarySearch(searchValue: 7, array: numbers)


