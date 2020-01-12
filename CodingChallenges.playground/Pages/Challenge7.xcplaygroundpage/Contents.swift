//: [Previous](@previous)

import Foundation

/// Write a function that returns a string with any
/// consecutive spaces replaced with a single space.
func challenge7(input: String) -> String {
    return input.reduce("") { str, char -> String in
        if char == " " && str.last == " " {
            return str
        } else {
            return str + String(char)
        }
    }
}

//• The string “a[space][space][space]b[space][space][space]c” should return “a[space]b[space]c”.
challenge7(input: "a   b   c") == "a b c"
//• The string “[space][space][space][space]a” should return “[space]a”.
challenge7(input: "    a") == " a"
//• The string “abc” should return “abc”.
challenge7(input: "abc") == "abc"

//: [Next](@next)
