import UIKit
import Foundation

// Most common element in array
let colors = ["Blue", "Green", "Blue", "Blue", "Yellow", "Black", "Blue", "Red", "Pink", "Blue", "White", "Gray", "Pink"]

func mostCommonElement(array list: [String])->[String] {
    var heightesColor: [String] = []
    var colorsDicts: [String:Int] = [:]
    for color in list {
        if let count = colorsDicts[color] {
            colorsDicts[color] = count + 1
        } else {
            colorsDicts[color] = 1
        }
    }
    
    let highestScore = colorsDicts.values.max()
    for (color, count) in colorsDicts {
        if colorsDicts[color] == highestScore {
            heightesColor.append(color)
        }
    }
    return heightesColor
}

print(mostCommonElement(array: colors))
