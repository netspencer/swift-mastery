//: [Previous](@previous)

import Foundation

/// Write a function that accepts two strings, and returns true if they are identical in length but
/// have no more than three different letters, taking case and string order into account.
func challenge11(_ string1: String, _ string2: String) -> Bool {
    guard string1.count == string2.count else { return false }
    var differences = 0
    
    let array1 = Array(string1)
    let array2 = Array(string2)
    
    for (index, char) in array1.enumerated() {
        if char != array2[index] {
            differences += 1
        }
        if differences == 4 {
            return false
        }
    }
       
    return true
}

//• The strings “Clamp” and “Cramp” would return true, because there is one letter difference.
challenge11("Clamp", "Cramp") == true
//• The strings “Clamp” and “Crams” would return true, because there are two letter ndifferences.
challenge11("Clamp", "Crams") == true
//• The strings “Clamp” and “Grams” would return true, because there are three letter differences.
challenge11("Clamp", "Grams") == true
//• The strings “Clamp” and “Grans” would return false, because there are four letter differences.
challenge11("Clamp", "Grans") == false
//• The strings “Clamp” and “Clam” would return false, because they are different lengths.
challenge11("Clamp", "Clam") == false
//• The strings “clamp” and “maple” should return false. Although they differ by only one letter, the letters that match are in different positions.
challenge11("clamp", "maple") == false

//: [Next](@next)
