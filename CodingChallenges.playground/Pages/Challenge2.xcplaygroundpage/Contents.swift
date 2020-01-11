//: [Previous](@previous)

import Foundation

// Challenge 2

/// Write a function that accepts a String as its only parameter,
/// and returns true if the string reads the same when reversed,
/// ignoring case
func challenge2(input: String) -> Bool {
    // create lowercased version of the string to ignore case
    let lowercased = input.lowercased()

    // if the reverse is equal to the string itself, its a palindrome
    return String(lowercased.reversed()) == lowercased
}


challenge2(input: "rotator") == true
challenge2(input: "Rats live on no evil star") == true
challenge2(input: "Never odd or even") == false
challenge2(input: "Hello, world") == false

//: [Next](@next)
