//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// find int that comes up odd number of times

func findIt(_ seq: [Int]) -> Int {
    
    var numDict = [Int:Int]()
    
    for num in seq {
        
        if let value = numDict[num] {
            numDict[num] = value + 1
        } else {
            numDict[num] = 1
        }
    }
    
    for (key,value) in numDict {
        if value % 2 == 1  {
            return key
        }
    }
    
    return 0
}

//print(findIt([1,2,3,1,2,3,1,2,3,1,2]))


// find odd int in array of matching ints usong inout method

public func solution(_ A : inout [Int]) -> Int{
    
    var index = 0
    
    while index <= A.count - 1 {
      print("cat")
        index += 1
    }
    
    return index
}


var array = [3,2,2,3,4]
print(solution(&array))
