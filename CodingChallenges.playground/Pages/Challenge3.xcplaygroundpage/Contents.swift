//: [Previous](@previous)

import Foundation

/// Write a function that accepts two String parameters,
/// and returns true if they contain the same characters
/// in any order taking into account letter case.
func challenge3(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

challenge3(string1: "abca", string2: "abca") == true
challenge3(string1: "abc", string2: "cba") == true
challenge3(string1: "a1 b2", string2: "b1 a2") == true
challenge3(string1: "abc", string2: "abca") == false
challenge3(string1: "abc", string2: "Abc") == false
challenge3(string1: "abc", string2: "cbAa") == false
challenge3(string1: "abcc", string2: "abca") == false

//: [Next](@next)
