//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/23.
//

import Foundation

// 217

func solution(nums: [Int]) -> Bool {
    var set = Set<Int>()
    for n in nums {
        if set.contains(n) {
            return true
        }
        set.insert(n)
    }
    return false
}

func main() {
    print(solution(nums: [1, 2, 3]))
    print(solution(nums: [1, 2, 3, 1]))
}

main()
