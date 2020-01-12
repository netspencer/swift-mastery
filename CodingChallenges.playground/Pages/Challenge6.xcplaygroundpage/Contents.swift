//: [Previous](@previous)

import Foundation

/// Write a function that accepts a string as its input, and returns
/// the same string just with duplicate letters removed.
func challenge6(input: String) -> String {
    var seen = [Character]()
    return input.filter {
        let exists = seen.contains($0)
        seen.append($0)
        return !exists
    }
}

//• The string “wombat” should print “wombat”.
challenge6(input: "wombat") == "wombat"
//• The string “hello” should print “helo”.
challenge6(input: "hello") == "helo"
//• The string “Mississippi” should print “Misp”.
challenge6(input: "Mississippi") == "Misp"

//: [Next](@next)
