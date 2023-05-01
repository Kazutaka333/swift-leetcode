//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/29.
//

import Foundation

// 242

func solution(s: String, t: String) -> Bool {
    let tableS = Dictionary(s.map {($0, 1)}, uniquingKeysWith: +)
    let tableT = Dictionary(t.map {($0, 1)}, uniquingKeysWith: +)
    return tableS == tableT
}
