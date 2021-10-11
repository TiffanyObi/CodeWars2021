//: [Previous](@previous)

import Foundation

//Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. The input will be a non-negative integer.
//

//Examples
//
//    16  -->  1 + 6 = 7
//   942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
//132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6
//493193  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2





func recursiveSumOfDigits(_ int: Int) -> Int {
    var finalSum = 0
    let stringInt = String(int)
    var intArray = [Int]()
    
    for char in stringInt {
        finalSum += (Int("\(char)") ?? 0)
        intArray.append(Int("\(char)") ?? 0)
    }
    
    
    if intArray.count > 1 {
        return  recursiveSumOfDigits(finalSum)
    } else {
        return finalSum
    }
}


recursiveSumOfDigits(2468097531) //9
recursiveSumOfDigits(493193) //2
recursiveSumOfDigits(132189) //6
recursiveSumOfDigits(12) //3
recursiveSumOfDigits(987654321) //9
recursiveSumOfDigits(13579) //7


