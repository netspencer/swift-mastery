//: [Previous](@previous)

import Foundation

// Challenge 2

/// Write a function that accepts a String as its only parameter,
/// and returns true if the string reads the same when reversed,
/// ignoring case
func challenge2(input: String) -> Bool {
    // create lowercased version of the string to ignore case
    let lowercased = input.lowercased()

    return String(lowercased.reversed()) == lowercased
}


assert(challenge2(input: "Hannah") == true, "Challenge 2 failed")
assert(challenge2(input: "racecar") == true, "Challenge 2 failed")
assert(challenge2(input: "spencer") == false, "Challenge 2 failed")

//: [Next](@next)
