//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//You will need to create logic for the following two functions: isPrime(number) and getPrimes(start, finish)
//
//isPrime(number)
//
//Should return boolean true if prime, otherwise false
//
//getPrimes(start, finish)
//
//Should return a unique, sorted array of all primes in the range [start, finish] (i.e. both numbers inclusive). Note that this range can go both ways - e.g. getPrimes(10, 1) should return all primes from 1 to 10 both inclusive.
//
//Sample Input:
//
//isPrime(number):
//
//isPrime(0); // === false
//isPrime(1); // === false
//isPrime(2); // === true
//isPrime(3); // === true
//isPrime(4); // === false
//isPrime(5); // === true
//getPrimes(start, finish):
//
//getPrimes(0, 0); // === []
//getPrimes(0, 30); // === [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
//getPrimes(30, 0); // === [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]

extension Int {
    func isPrime(_ int:Int) -> Bool {
        
        let check = int % 2 == 0 || int % 3 == 0 || int % 5 == 0
        
        switch check {
        
        case true:
            return true
        case false:
            return false
        }
  }
}


func getPrimes(from start: Int, to end: Int) -> [Int] {
  
    var primes = [Int]()
    
    
    
    for num in start...end {
        
        if num == 0 || num == 1 {
            continue
        }
        
        if num == 2 || num == 3 || num == 5 {
            primes.append(num)
        }
        
        
        if num.isPrime(num) {
            continue
        } else {
            primes.append(num)
        }
    }
    
    
    return primes.sorted()
    
}

print(getPrimes(from: 30, to: 0))
