//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"


func pyramid(_ n: Int) -> [[Int]] {
  
  var pyramidArray = [[Int]]()
 
    if n == 0 {
    return []
 }
    for num in 1...n {
        pyramidArray.append(Array(repeating:1, count: num))
    }
    
    return pyramidArray
}
print((pyramid(7)))
