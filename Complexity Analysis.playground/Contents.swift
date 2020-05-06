

/* Write a function that accepts a string, and returns how many times a specific character appears,
 taking case into account. */

func checkSpecificCharecter(input: String, count: Character) -> Int {
    var letterCount = 0
    for letter in input {
        if letter == count {
            letterCount += 1
        }
    }
    return letterCount
}

// Complexity:  O(n)




/* Write a function that accepts a string as its input, and returns the same string just with
 duplicate letters removed.*/

func removeDuplicate(string: String) -> String {
    var used = [Character]()
    for letter in string {
        if !used.contains(letter) {
            used.append(letter)
        } }
    return String(used)
}

// Complexity:  O(n2)
