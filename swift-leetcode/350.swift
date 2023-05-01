//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/26.
//

import Foundation
// 350

func solution(nums1: [Int], nums2: [Int]) -> [Int] {
    let table1 = Dictionary(nums1.map { ($0, 1) }, uniquingKeysWith: { $0 + $1 })
    let table2 = Dictionary(nums2.map { ($0, 1) }, uniquingKeysWith: { $0 + $1 })
    var answer = [Int]()
    for (key, value) in table1 {
        for _ in 0..<(min(table2[key, default: 0], value)) {
            answer.append(key)
        }
    }
    return answer
}


// nums1 and nums2 could be empty? -> no, at lease one element


