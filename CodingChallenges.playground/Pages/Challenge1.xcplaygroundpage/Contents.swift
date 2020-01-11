import Foundation

/// Write a function that accepts a String as its only parameter,
/// and returns true if the string has only unique letters,
/// taking letter case into account.
func challenge1(input: String) -> Bool {
    var lettersSeen = [Character]()

    for letter in input {
        if lettersSeen.contains(letter) {
            return false
        }

        lettersSeen.append(letter)
    }

    return true
}

assert(challenge1(input: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(challenge1(input: "AaBbCc") == true, "Challenge 1 failed")
assert(challenge1(input: "Hello, world") == false, "Challenge 1 failed")
