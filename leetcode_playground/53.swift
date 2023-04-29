//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/23.
//

import Foundation

// 53
func solution(nums: [Int]) -> Int {
    var sum = 0
    var ans = -99999
    for n in nums {
        sum = max(n, sum + n)
        ans = max(ans, sum)
    }
    return ans
}

var ans = -99999
func solutionDivideAndConcur(nums: [Int]) -> Int {
    helper(nums: nums, endIndex: nums.count - 1)
    return ans
}

func helper(nums: [Int], endIndex: Int) -> Int {
    if endIndex < 0 {
        return 0
    }
    let sum = max(helper(nums: nums, endIndex: endIndex - 1) + nums[endIndex], nums[endIndex])
    ans = max(sum, ans)
    return sum
}

// nums = [-2,1,-3,4,-1,2,1,-5,4]
// #1: sum = -2 -> sum = 0, ans = 0
// #2: sum = 1 -> sum = 1, ans = 1
// #3: sum = -2 -> sum = 0, ans = 1
// #4: sum = 4 -> sum = 4, ans = 4
// #5: sum = 3 -> sum = 3, ans = 4
// #5: sum = 5 -> sum = 5, ans = 5
// #5: sum = 6 -> sum = 6, ans = 6
// #5: sum = 6 -> sum = 6, ans = 6
