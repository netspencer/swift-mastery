//: [Previous](@previous)

import Foundation

/// Given a string in English, return a tuple containing
/// the number of vowels and consonants.
func challenge10(input: String) -> (vowels: Int, consonants: Int) {
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"

    var numVowels = 0
    var numConsonants = 0

    for letter in input.lowercased() {
        if vowels.contains(letter) {
            numVowels += 1
        } else if consonants.contains(letter) {
            numConsonants += 1
        }
    }

    return (numVowels, numConsonants)
}

//• The input “Swift Coding Challenges” should return 6 vowels and 15 consonants.
challenge10(input: "Swift Coding Challenges") == (6, 15)
//• The input “Mississippi” should return 4 vowels and 7 consonants.
challenge10(input: "Mississippi") == (4, 7)

//: [Next](@next)
