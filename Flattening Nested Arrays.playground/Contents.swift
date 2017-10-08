// Flattening nested arrays

import UIKit

func flattenArray(nestedArray: [Any]) -> [Int] {
    
    var myFlattenedArray = [Int]()
    
    for element in nestedArray {
        if element is Int {
            myFlattenedArray.append(element as! Int)
        } else if element is [Any] {
            let recursionResult = flattenArray(nestedArray: element as! [Any])
            for num in recursionResult {
                myFlattenedArray.append(num)
            }
        }
        
    }
    
    return myFlattenedArray
    
}

var sampleArray = [1,[2,3,[4,5,6]]] as [Any]

flattenArray(nestedArray: sampleArray)





// ### Practice ###

func flattenArray2(nestedArray: [Any]) -> [Int] {
    
    var flattenedArray = [Int]()
    
    for element in nestedArray {
        if element is Int {
            flattenedArray.append(element as! Int)
        } else if element is [Any] {
            let recursionResult = flattenArray2(nestedArray: element as! [Any])
            for num in recursionResult {
                flattenedArray.append(num)
            }
        }
        
    }
    return flattenedArray
}

flattenArray2(nestedArray: sampleArray)

























