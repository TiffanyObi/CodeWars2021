//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//An array A consisting of N different integers is given. The array contains integers in the range [1..(N + 1)], which means that exactly one element is missing.
//
//Your goal is to find that missing element.
//
//Write a function:
//
//public func solution(_ A : inout [Int]) -> Int
//that, given an array A, returns the value of the missing element.
//
//For example, given array A such that:
//
//  A[0] = 2
//  A[1] = 3
//  A[2] = 1
//  A[3] = 5
//the function should return 4, as it is the missing element.

func solution(_ A : inout [Int]) -> Int {
    
    let index = 0
    A = A.sorted()
  
    
    while index < (A.count - 1) {
        if A[index + 1] != A[index] + 1 {
          return A[index] + 1
        } else {
            A.remove(at: index)
        }
    }
   
   return 0
}

var group = [1,3,2,5]
print(solution(&group))

// this function does not work for a large set of numbers needs to be revised
