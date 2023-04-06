//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/03/31.
//

import Foundation

// 392

func isSubsequence(_ s: String, _ t: String) -> Bool {
    var sIndex = 0
    let s = Array(s)
    let t = Array(t)
    for i in 0 ..< t.count {
        if sIndex >= s.count {
            return true
        } else if t[i] == s[sIndex] {
            sIndex += 1
        }
    }
    return sIndex == s.count
}

//print(isSubsequence("abc", "ahbgdc"))
//print(isSubsequence("axc", "ahbgdc"))
