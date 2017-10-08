// Factorials and Recursion

import UIKit

func factorial(_ n: UInt) -> UInt {
   
    //stop condition
    if n == 0 {
        return 1
    }
    //Recursion
    return n * factorial(n-1)
   
}

factorial(8)
factorial(5)

