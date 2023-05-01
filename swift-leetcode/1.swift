//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/25.
//

import Foundation

// 1
func solution(nums: [Int], target: Int) -> [Int] {
    var table = [Int: Int]()
    for (i, n) in nums.enumerated() {
        if let j = table[target-n] {
            return [j, i]
        }
        table[n] = i
    }
    return []
}

func main() {
    print(solution(nums: [1,2], target: 3))
    print(solution(nums: [1,2,3,4], target: 5))
}

main()
