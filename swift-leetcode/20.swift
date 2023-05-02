//
//  main.swift
//  swift-leetcode
//
//  Created by Kazutaka Homma on 2023/05/02.
//

import Foundation

// 20
func solution(s: String) -> Bool {
    var stack = [Character]()
    let rights:[Character] = [")", "]", "}"]
    let lefts:[Character] = ["(", "[", "{"]
    for c in s {
        if rights.contains(c) {
            if lefts[rights.firstIndex(of: c)!] != stack.last {
                return false
            }
            let _ = stack.popLast()
        } else {
            stack.append(c)
        }
    }
    return stack.isEmpty
}
// Time: O(N)
// Space: O(N)
