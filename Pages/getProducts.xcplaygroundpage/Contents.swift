//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//Given an array of N integers, create an output array of N integers, where each element in the output array is the product of all of the other elements in the input except for the one in that position.


func getProducts(_ arr:[Int]) -> [Int] {
    var products = [Int]()
    
    if arr.count < 2 {
        return [0]
    }
    
    let product = findProduct(arr)
    
    if product == 0 {
        return Array(repeating: 0, count: arr.count)
    }
    
    let hasZero = arr.contains(0)
    
    
    
    for num in arr {
        
        if hasZero && num != 0 {
        products.append(0)
        } else if num == 0 {
        products.append(product)
        } else {
        products.append(product/num)
    }
}
    return products
}

func findProduct(_ arr: [Int]) -> Int {
    var product = 1
    var count = 0
    
    for num in arr {
        
    if num != 0 {
        product *= num
    } else {
       count += 1
        
        if count > 1 {
            return 0
        }
    }
    
}
    return product
}



let array = [-1,2,3,4,-5]

print(findProduct(array))
print(getProducts(array))
