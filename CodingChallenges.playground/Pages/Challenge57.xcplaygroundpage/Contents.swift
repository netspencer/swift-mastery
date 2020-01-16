//: [Previous](@previous)

import Foundation

func challenge57(_ first: Any, _ second: Any) -> Bool {
    let firstStr = String(describing: first)
    let secondStr = String(describing: second)

    guard firstStr.count == secondStr.count else { return false }

    let array1 = Array(firstStr)
    let array2 = Array(secondStr)

    var mappings = [Character: Character]()

    for i in 0..<firstStr.count {
        if let char = mappings[array1[i]] {
            if char != array2[i] {
                return false
            }
        } else {
            if mappings.values.contains(array2[i]) {
                return false
            }

            mappings[array1[i]] = array2[i]
        }
    }

    return true
}

//• “clap” and “slap”
challenge57("clap", "slap") == true
//• “rum” and “mud”
challenge57("rum", "mud") == true
//• “pip” and “did”
challenge57("pip", "did") == true
//• “carry” and “baddy”
challenge57("carry", "baddy") == true
//• “cream” and “lapse”
challenge57("cream", "lapse") == true
//• 123123 and 456456
challenge57(123123, 456456) == true
//• 3.14159 and 2.03048
challenge57(3.14159, 2.03048) == true
//• [1, 2, 1, 2, 3] and [4, 5, 4, 5, 6]
challenge57([1,2,1,2,3], [4,5,4,5,6]) == true

//• “carry” and “daddy” – the Rs have become D, but C has also become D.
challenge57("carry", "daddy") == false
//• “did” and “cad” – the first D has become C, but the second has remained D.
challenge57("did", "cad") == false
//• “maim” and “same” – the first M has become S, but the second has become E.
challenge57("maim", "same") == false
//• “curry” and “flurry” – the strings have different lengths.
challenge57("curry", "flurry") == false
//• 112233 and 112211 – the number 1 is being mapped to 1, and the number 3 is also being
challenge57(112233, 112211) == false

//: [Next](@next)
