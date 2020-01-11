//: [Previous](@previous)

// Challenge 1

import Foundation

/// Write a function that accepts a String as its only parameter,
/// and returns true if the string has only unique letters,
/// taking letter case into account.
func challenge1(input: String) -> Bool {
    // create an array to keep track of characters that have been seen in the string
    var characters = [Character]()

    // loop over each character in the input string
    for character in input {
        // if the character is already contained in the characters array, the array is not unique
        if characters.contains(character) {
            return false
        }

        characters.append(character)
    }

    return true
}

challenge1(input: "No duplicates") == true
challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true
challenge1(input: "AaBbCc") == true
challenge1(input: "Hello, world") == false

//: [Next](@next)
