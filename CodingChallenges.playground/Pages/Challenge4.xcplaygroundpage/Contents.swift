//: [Previous](@previous)

import Foundation

/// Write your own version of the contains() method on String that ignores letter case,
/// and without using the existing contains() method.
extension String {
    func fuzzyContains(_ string: String) -> Bool {
        return uppercased().range(of: string.uppercased()) != nil
    }
}

"Hello, world".fuzzyContains("Hello") == true
"Hello, world".fuzzyContains("WORLD") == true
"Hello, world".fuzzyContains("Goodbye") == false

//: [Next](@next)
