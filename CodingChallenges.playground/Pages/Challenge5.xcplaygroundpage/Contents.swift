//: [Previous](@previous)

import Foundation

/// Write a function that accepts a string, and returns how many times a specific
/// character appears, taking case into account.
func challenge5(_ string: String, _ character: Character) -> Int {
    return string.reduce(0) { count, char -> Int in
        return char == character ? count + 1 : count
    }
}

challenge5("The rain in Spain", "a") == 2
challenge5("Mississippi", "i") == 4
challenge5("Hacking with Swift", "i") == 3

//: [Next](@next)
