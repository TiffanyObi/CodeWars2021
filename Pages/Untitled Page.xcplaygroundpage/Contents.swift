//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func digPow(for number: Int, using power: Int) -> Int{
  
    var k = 0
    
    var count = power

    let stringInt = String(number)
    var totalFromExpo = 0
    
    for char in stringInt {
        totalFromExpo += getExponentialValue(Int("\(char)") ?? 1, count)
        count += 1
    }
    
    if totalFromExpo % number == 0 {
        k = totalFromExpo / number
        return k
    } else {
        return -1
    }

}

func getExponentialValue(_ int:Int, _ exponent:Int) -> Int {
   var count = exponent
    var newInt = 1
    
    while count > 0 {
       newInt *= int
        count -= 1
    }
    
  
    return newInt
}

//print(getExponentialValue(10, 3))
print(digPow(for: 46288, using: 3))

//1 + 4 + 27 = 32
//1 + 8 + 81 90
