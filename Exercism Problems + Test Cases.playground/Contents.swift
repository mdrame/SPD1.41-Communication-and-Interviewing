import UIKit
import Foundation

//Write a function that accepts a String as its only parameter, and returns true if the string has
//only unique letters, taking letter case into account.

func isUnique(input string: String)-> Bool  {
    // 1. create a array of checked characters, then loop throught everry letter in the input string and append the latter of the list of checked characters, returning false as soon as a call to contain () fails.
    var usedWord = [Character]()
    
    for letter in string {
        if usedWord.contains(letter) {
            return false
        }
        usedWord.append(letter)
    }
    return true
}

print(isUnique(input: "Mohamed"))
// Test
assert(isUnique(input: "Adam") == true, "Sorry, string is not unique my friend")

