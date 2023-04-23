//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/07.
//

import Foundation
// 704

class Solution704 {
    func searchLoop(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = (left + right) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return -1
    }

    var globalNums = [Int]()
    var globalTarget = 0
    func search(_ nums: [Int], _ target: Int) -> Int {
        globalNums = nums
        globalTarget = target
        return helper(left: 0, right: nums.count - 1)
    }

    func helper(left: Int, right: Int) -> Int {
        guard left <= right else {
            return -1
        }
        let mid = (left + right) / 2
        if globalNums[mid] == globalTarget {
            return mid
        } else if globalNums[mid] < globalTarget {
            return helper(left: mid + 1, right: right)
        } else {
            return helper(left: left, right: mid - 1)
        }
    }
}

// 1, 2, 3 : 3
// 1, 2, 3 : 1
// 1, 2, 3, 4: 3
// l: 0, r: 3
// l: 2, r: 3, mid: 2
//
