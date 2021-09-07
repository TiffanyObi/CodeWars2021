//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"



let cuurent = 1041

func getBinaryGap(_ N: Int) -> Int {
    var binaryGap = 0
    var counter = 0
    let stringN = String(N,radix: 2)
    print(stringN)
    var arrOfN = [String]()
    
    for num in stringN {
        arrOfN.append("\(num)")
    }
    for (index,num) in arrOfN.enumerated() {
        if num == "0" && index != 0 {
            counter += 1
        } else if num != "0" && counter > 0 {
            if counter > binaryGap {
            binaryGap = counter
            }
            counter = 0
        }
    }
    return binaryGap
}

print(getBinaryGap(cuurent))

