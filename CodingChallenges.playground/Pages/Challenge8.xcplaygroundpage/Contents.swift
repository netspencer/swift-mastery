//: [Previous](@previous)

import Foundation

/// Write a function that accepts two strings, and returns true
/// if one string is rotation of the other, taking letter case into account.
func challenge8(_ string1: String, _ string2: String) -> Bool {
    guard string1.count == string2.count else { return false }
    let combined = string1 + string1
    return combined.contains(string2)
}

//• The string “abcde” and “eabcd” should return true.
challenge8("abcde", "eabcd") == true
//• The string “abcde” and “cdeab” should return true.
challenge8("abcde", "cdeab") == true
//• The string “abcde” and “abced” should return false; this is not a string rotation.
challenge8("abcde", "abced") == false
//• The string “abc” and “a” should return false; this is not a string rotation.
challenge8("abc", "a") == false

//: [Next](@next)
