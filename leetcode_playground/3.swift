//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/22.
//

import Foundation

// 3
func solution(s: String) -> Int {
    if s.count == 0 {
        return 0
    }
    var set = Set<Character>()
    var j = s.indices.first!
    var answer = 0
    for i in s.indices {
        let c = s[i]
        while set.contains(c) {
            set.remove(s[j])
            j = s.index(j, offsetBy: 1)
        }
        set.insert(c)
        answer = max(answer, set.count)
    }
    return answer
}
