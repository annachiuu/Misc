// Higher Order Functions
import UIKit

let numbers = [1,2,3]

//filter using higher order function $0

var filtered  = numbers.filter({return $0 == 3})
filtered

var filteredEven = numbers.filter({return $0 % 2 == 0})
filteredEven

// Transform

var transform = numbers.map({return $0 * 2})
transform

// Reduce

//sum all elements in an array (reduce all values into one single value)

var sumElements = 0
let sum = numbers.reduce(0, {sum, number in sum + number})
