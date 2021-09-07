import UIKit

var greeting = "Hello, playground"



func wave(_ y: String) -> [String] {
    
    var waveArray = [String]()
    var waveString = ""
    var index = 0
//    var spaceArray = [Int]()
    
    
    while index <= (y.count - 1) {
    for (index1,char) in y.enumerated() {
        if index1 == index && char != " " {
            waveString.append(char.uppercased())
        } else if char == " " && index1 == index {
// ad spaces index to array to remove from waveStringArray later
        } else {
            waveString.append(char)
        }
    }
            index += 1
        waveArray.append(waveString)
        waveString = ""
  }
    return waveArray
}

print(wave("heyy how are you!"))
