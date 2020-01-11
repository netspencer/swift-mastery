//: [Previous](@previous)

import Foundation

extension String {
    func fuzzyContains(_ string: String) -> Bool {
        return uppercased().range(of: string.uppercased()) != nil
    }
}

"Hello, world".fuzzyContains("Hello") == true
"Hello, world".fuzzyContains("WORLD") == true
"Hello, world".fuzzyContains("Goodbye") == false

//: [Next](@next)
