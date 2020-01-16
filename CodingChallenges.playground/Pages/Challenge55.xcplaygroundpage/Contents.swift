//: [Previous](@previous)

import Foundation

/// Create an extension for arrays that sorts them using the bubble sort algorithm.
/// Tip: A bubble sort repeatedly loops over the items in an array, comparing items
/// that are next to each other and swapping them if they aren’t sorted.
/// This looping continues until all items are in their correct order.
extension Array where Element: Comparable {
    func challenge55() -> [Element] {
        guard count > 1 else { return self }

        var newArray = self

        // N times we must make a pass at sorting
        for i in 0..<count {
            // for each pass, we make N - i passes
            for j in 1..<count - i {
                if newArray[j] < newArray[j-1] {
                    newArray.swapAt(j, j-1)
                }
            }
        }

        return newArray
    }
}

//• The array [12, 5, 4, 9, 3, 2, 1] should become [1, 2, 3, 4, 5, 9, 12].
[12, 5, 4, 9, 3, 2, 1].challenge55() == [1, 2, 3, 4, 5, 9, 12]
//• The array ["f", "a", "b"] should become ["a", "b", "f"].
["f", "a", "b"].challenge55() == ["a", "b", "f"]
//• The array [String]() should become [].
[String]().challenge55() == []

//: [Next](@next)
