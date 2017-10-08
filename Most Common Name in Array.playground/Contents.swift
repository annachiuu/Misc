// Most common name in array

//Dictionaries can single out the unique values in an array
    //put the name as the key value

import UIKit

func mostCommonNameInArray(array: [String]) -> String {
    
    var nameCountDictionary = [String: Int]()
    
    for name in array {
        if let count = nameCountDictionary[name] {
            nameCountDictionary[name] = count + 1
        } else {
            nameCountDictionary[name] = 1
        }
    }

    //Find key with max count - !! iterate through the keys instead of the array
    var maxCount = 1
    var maxName = ""
    
    for key in nameCountDictionary.keys {
        print("\(key): \(nameCountDictionary[key]!)")
        if nameCountDictionary[key]! > maxCount {
            maxCount = nameCountDictionary[key]!
            maxName = key
        }
    }
    
    return maxName
}

let mostCommon = mostCommonNameInArray(array: ["Anna", "Anna", "Dan", "Eric", "Eric", "Dan", "Anna"])

print("\n")
print(mostCommon)


