//: [Previous](@previous)

import Foundation

/// Create an extension for arrays that sorts them using the insertion sort algorithm.
/// Tip: An insertion sort creates a new, sorted array by removing items individually
/// from the input array and placing them into the correct position in the new array.
extension Array where Element: Comparable {
    func challenge56a() -> [Element] {
        guard count > 1 else { return self }

        // create a newArray which we will keep sorted as we insert into it
        var newArray = [Element]()

        // loop thru every unsorted element in the initial array
        for unsorted in self {
            // if the newArray is empty, the unsorted element becomes its first
            if newArray.isEmpty {
                newArray.append(unsorted)
            } else {
                var placed = false

                // for every sorted element in the new (sorted array)
                for (index, sorted) in newArray.enumerated() {
                    // if the unsorted element is less than the sorted element, we insert the element
                    // at the index of the sorted item that its less than
                    if unsorted < sorted {
                        newArray.insert(unsorted, at: index)
                        // once we have placed the element, we can mark it as placed
                        placed = true
                        break
                    }
                }

                // if we are unable to place it, its larger than everything in the array
                if !placed {
                    newArray.append(unsorted)
                }
            }
        }

        return newArray
    }

    func challenge56b() -> [Element] {
        guard count > 1 else { return self }
        var newArray = self

        for i in 1..<count {
            var j = i

            let item = newArray[j]

            while j > 0 && item < newArray[j-1] {
                newArray[j] = newArray[j-1]
                j -= 1
            }

            newArray[j] = item
        }

        return newArray
    }

}

//• The array [12, 5, 4, 9, 3, 2, 1] should become [1, 2, 3, 4, 5, 9, 12].
[12, 5, 4, 9, 3, 2, 1].challenge56a() == [1, 2, 3, 4, 5, 9, 12]
//• The array ["f", "a", "b"] should become ["a", "b", "f"].
["f", "a", "b"].challenge56a() == ["a", "b", "f"]
//• The array [String]() should become [].
[String]().challenge56a() == []

//• The array [12, 5, 4, 9, 3, 2, 1] should become [1, 2, 3, 4, 5, 9, 12].
[12, 5, 4, 9, 3, 2, 1].challenge56b() == [1, 2, 3, 4, 5, 9, 12]
//• The array ["f", "a", "b"] should become ["a", "b", "f"].
["f", "a", "b"].challenge56b() == ["a", "b", "f"]
//• The array [String]() should become [].
[String]().challenge56b() == []

//: [Next](@next)
