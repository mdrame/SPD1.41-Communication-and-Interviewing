import UIKit
import Foundation

//Challenge 1: Are the letters unique?
//Write a function that accepts a String as its only parameter, and returns true if the string has
//only unique letters, taking letter case into account.

func isUnique(input string: String)-> Bool  {
    //    create a array of checked characters, then loop throught everry letter in the input string and append the latter of the list of checked characters, returning false as soon as a call to contain () fails.
    var usedWord = [Character]()
    
    for letter in string {
        if usedWord.contains(letter) {
            return false
        }
        usedWord.append(letter)
    }
    return true
}
// Call & Test
print(isUnique(input: "Mohamed"))
assert(isUnique(input: "Adam") == true, "Sorry, string is not unique my friend")

// Refacter
func refacterisUnique(input: String)->Bool {
    return Set(input).count == input.count
}
// Call & Test
print(refacterisUnique(input: "Dude"))
assert(refacterisUnique(input: "Brother") == false, "Key is unique")



//Challenge 2: Is a string a palindrome?
// Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case.

func palindrome(input: String) -> Bool {
// convert input to lowercased string of a new variable. check newly created lowercase array with input as an array as a condition statment. Retrun bool base of
    let lowercase = input.lowercased()
    //    print(lowercase)
    if lowercase.reversed() == Array(lowercase) {
        return true
    }
    return false
}

// Call & Test
print(palindrome(input: "Never"))
assert(palindrome(input: "Rotator") == true, "String not a palindrome")

// Recactor
func refactorpalindrome(input: String)->Bool {
    let lowercaseInput = input.lowercased()
//    print("Reversed: \(lowercaseInput.reversed()), Original: \(lowercaseInput)")
    return lowercaseInput.reversed() == Array(lowercaseInput)
}
// Call & Test
print(refactorpalindrome(input: "Never odd or even"))
assert(refactorpalindrome(input: "bob") == true, "String is not a palindrome")

