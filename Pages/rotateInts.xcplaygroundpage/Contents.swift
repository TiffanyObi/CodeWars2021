//: [Previous](@previous)

import Foundation

var array1 = [1,2,3,4]
var array2 = [4,5,6,7,8]

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    
    if A.count == K || K == 0 || A.count == 0 { return A}
   
    let rotation = K % A.count
    let range = 0...((A.count - 1) - rotation)
    let part = A[range]
    A.removeSubrange(range)
    return A+part
}

print(solution(&array1, 3))



