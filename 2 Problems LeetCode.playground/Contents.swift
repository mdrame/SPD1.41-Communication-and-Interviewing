import UIKit
import Foundation
//
//// Two sum leetcode question
///
// Given an array of integers, return indices of the two numbers such that they add up to a specific target.
// You may assume that each input would have exactly one solution, and you may not use the same element twice.
// Example:
// Given nums = [2, 7, 11, 15], target = 9,
// Because nums[0] + nums[1] = 2 + 7 = 9,
// return [0, 1].

// Answer
   func twoSum(list array: [Int], sum target: Int) -> [Int] {
        for i in 0..<array.count {
            for j in 0..<array.count where j != i {
//                print("\(array[i]) + \(array[j]) = \(array[i] + array[j])")
                if array[i] + array[j] == target {
                    return [i,j]
                }
            }
        }
        return []
    }

print(twoSum(list: [2,7,11,15], sum: 17))




