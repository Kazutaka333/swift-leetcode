//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/03/31.
//

import Foundation

func isIsomorphic(_ s: String, _ t: String) -> Bool {
    var map = [Character: Character]()
    var used = Set<Character>()
    let s = Array(s)
    let t = Array(t)
    for i in 0..<s.count {
        let sc = s[i]
        let tc = t[i]
        if map[sc] == nil && !used.contains(tc) {
            map[sc] = tc
            used.insert(tc)
        } else if map[sc] != tc {
            return false
        }
    }
    return true
}

//print(isIsomorphic("abc", "dca"))
//print(isIsomorphic("aaa", "ccc"))
//print(isIsomorphic("aaa", "csc"))
//print(isIsomorphic("ba", "cc"))
