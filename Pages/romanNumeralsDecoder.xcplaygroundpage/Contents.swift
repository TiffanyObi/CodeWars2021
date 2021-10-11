//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//Create a function that takes a Roman numeral as its argument and returns its value as a numeric decimal integer. You don't need to validate the form of the Roman numeral.
//
//Modern Roman numerals are written by expressing each decimal digit of the number to be encoded separately, starting with the leftmost digit and skipping any 0s. So 1990 is rendered "MCMXC" (1000 = M, 900 = CM, 90 = XC) and 2008 is rendered "MMVIII" (2000 = MM, 8 = VIII). The Roman numeral for 1666, "MDCLXVI", uses each letter in descending order.
//
//Example:
//
//solution("XXI") // should return 21
//Help:
//
//Symbol    Value
//I          1
//V          5
//X          10
//L          50
//C          100
//D          500
//M          1,000

func decodeRomanNumeral(_ romanNumberal:String)-> Int {
    
    var decodedNumeral = 0
    var previous = ""
    
    for char in romanNumberal {
        
        let romanNum = "\(char)"
        
        switch romanNum {
        
        case "M":
            
            if previous == "C"{
               
                decodedNumeral += 800
            } else {
                decodedNumeral += 1000
            }
            previous = "M"
        case "D":
            if previous == "C" {
                decodedNumeral += 300
            } else {
                decodedNumeral += 500
            }
            previous = "D"
            
        case "C":
            if previous == "X"{
                decodedNumeral += 80
            } else {
                decodedNumeral += 100
            }
            previous = "C"
        case "L":
            if previous == "X" {
                decodedNumeral += 30
            } else {
                decodedNumeral += 50
            }
            previous = "L"
            
        case "X":
            
            if previous == "I" {
                decodedNumeral += 8
            } else {
                decodedNumeral += 10
            }
            previous = "X"
        case "V":
            if previous == "I" {
                decodedNumeral += 3
            } else {
                decodedNumeral += 5
            }
            previous = "V"
            
        case "I":
            decodedNumeral += 1
            previous = "I"
        default :
            decodedNumeral += -999
        }
    }
    
    return decodedNumeral
}

print(decodeRomanNumeral("MCMXC"))
print(decodeRomanNumeral("MMVIII"))
print(decodeRomanNumeral("MDCLXVI"))
