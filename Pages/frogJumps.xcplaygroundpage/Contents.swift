//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"
//A small frog wants to get to the other side of the road. The frog is currently located at position X and wants to get to a position greater than or equal to Y. The small frog always jumps a fixed distance, D.
//
//Count the minimal number of jumps that the small frog must perform to reach its target.



public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
  var counter = 0
   var distance = Y - X

    while distance > D {
        counter += 1
        distance -= D
    }
    
    if distance > 0 {
        counter += 1
        return counter
    } else {
        return counter
    }
}
