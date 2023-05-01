//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/29.
//

import Foundation
// 383
func solution(ransomNote: String, magazine: String) -> Bool {
    let table = Dictionary(ransomNote.map { ($0, 1) }, uniquingKeysWith: +)
    let table2 = Dictionary(magazine.map { ($0, 1) }, uniquingKeysWith: +)
    return table.allSatisfy { c, count in
        count < table2[c, default: 0]
    }
}
