//: [Previous](@previous)

import Foundation

/// Write a function that returns true if it is given a string that is an
/// English pangram, ignoring letter case.
func challenge9(input: String) -> Bool {
    let characters = Set(input.lowercased())
    let letters = characters.filter { $0.isLetter }
    return letters.count == 26
}

//• The string “The quick brown fox jumps over the lazy dog” should return true.
challenge9(input: "The quick brown fox jumps over the lazy dog") == true
//• The string “The quick brown fox jumped over the lazy dog” should return false, because
//it’s missing the S.
challenge9(input: "The quick brown fox jumped over the lazy dog") == false

//: [Next](@next)
