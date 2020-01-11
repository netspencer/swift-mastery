//: [Previous](@previous)

import Foundation

func challenge5(_ string: String, _ character: Character) -> Int {
    var count = 0
    for char in string {
        if char == character {
            count = count + 1
        }
    }
    return count
}

challenge5("The rain in Spain", "a") == 2
challenge5("Mississippi", "i") == 4
challenge5("Hacking with Swift", "i") == 3

//: [Next](@next)
