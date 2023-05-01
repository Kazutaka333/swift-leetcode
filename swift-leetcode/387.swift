//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/29.
//

import Foundation

// 387

func solution(s: String) -> Int {
    let table = Dictionary(s.map { ($0, 1) }, uniquingKeysWith: +)
    for (i, char) in s.enumerated() {
        if table[char] == 1 {
            return i
        }
    }
    return -1
}
 

// s is not empty
// leetcode
// l: 1, e: 2, t:1, c:1, o:1, d:1, e:1
// 0
// Time: O(N) where N is length of s
// Space: O(1)

