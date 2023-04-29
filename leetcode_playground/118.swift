//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/26.
//

import Foundation
// 118

func solution(numRows: Int) -> [[Int]] {
    var answer = [[1]]
    for i in 1..<numRows {
        answer.append([])
        for j in 0..<(i + 1) {
            let left = j-1 > -1 ? answer[i-1][j-1] : 0
            let right = j < answer[i-1].count ? answer[i-1][j] : 0
            answer[i].append(left + right)
        }
    }
    return answer
}


// numRows: 5
// answer: [[1]]
// answer: [[1],[1]]
// answer: [[1],[1,1]]
// answer: [[1],[1,1], [1]]
// answer: [[1],[1,1], [1, 2]]
// answer: [[1],[1,1], [1, 2, 1]]
// answer: [[1],[1,1], [1, 2, 1]]

