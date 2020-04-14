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

// Binary Search

func binarySearch(list array: [Int], value target: Int) ->Bool {
    // checking if array is not empty
    if array.count == 0 {
        print("Programe terminated: Array count is 0")
        return false }
    // setting binary pointers
    let startIndex = 0
    let endIndex = array.count - 1
    let middleIndex = endIndex / 1
    let middleIndexValue = array[middleIndex]
    // checking if target is within array to avoid unessesary consuption of memory, that is assumming that the array is alrady sorted
    if target < array[startIndex] || target > array[endIndex] {
        print("Sorry target is not in array")
        return false }
    
    if target > middleIndexValue {
        let slice = Array(array[middleIndex + 1 ... endIndex])
        return binarySearch(list: slice, value: target)
    }
    
    if target < middleIndexValue {
        let slice = Array(array[startIndex...middleIndex - 1])
        return binarySearch(list: slice, value: target)
    }
    
    if target == middleIndexValue {
        print("Target found in array")
        return true
    }
    
    return false
}

let arrayList = Array(0...500)
binarySearch(list: arrayList, value: 300)
