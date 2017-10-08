// Fibonacci + recursion


import UIKit

func fibonacci(numSteps: Int, firstNum: Int, secondNum: Int) -> [Int] {
    
    if numSteps == 0 {
        return []
    }
    print("\(firstNum) + \(secondNum)")
    return [firstNum + secondNum] + fibonacci(numSteps: numSteps-1, firstNum: secondNum, secondNum: firstNum + secondNum)
}


[0,1] + fibonacci(numSteps: 5, firstNum: 0, secondNum: 1)


