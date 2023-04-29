//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/26.
//

import Foundation
// 566

func solution(mat: [[Int]], r: Int, c: Int) -> [[Int]] {
    if mat.count * mat[0].count != r * c {
        return mat
    }
    let mat = mat.flatMap { $0 }
    var answer = [[Int]]()
    for y in 0..<r {
        answer.append([])
        for x in 0..<c {
            answer[y].append(mat[x+y*c])
        }
    }
    return answer
}
// mat = [[1,2],[3,4]], r = 1, c = 4
// answer = []
// y:0, x:0, answer:[[1]]
// y:0, x:1, answer:[[1, 2]]
// y:0, x:2, answer:[[1, 2, 3,]]
// y:0, x:3, answer:[[1, 2, 3, 4]]

// what's the size constrain of mat?
// min? and max?
// 1 <= mat.count, mat[0].count <= 100



