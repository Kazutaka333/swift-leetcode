//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/29.
//

import Foundation
// 74

func solution(matrix: [[Int]], target: Int) -> Bool {
    let col = matrix[0].count
    var left = 0
    var right = matrix.count * col - 1
    while left <= right {
        let mid = (right + left) / 2
        let y = mid / col, x = mid % col
        let val = matrix[y][x]
        if target < val {
            right = mid - 1
        } else if val < target {
            left = mid + 1
        } else {
            return true
        }
    }
    return false
}

//Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
//Output: true
// col = 4, row = 3
//#: left right mid x  y  val
//1: 0    11    5   1  1  11
//2: 0    4     2   2  0  5
//3: 0    1     0   0  0  1
//4: 1    1     1   1  0  3


// m x n
// m/n can be empty?
// can each element fit in Int?
// can m and n fit in Int?
//  1 <= m, n <= 100
// O(Log(n*m))
// 0,1,2,3,
// 4,5,6,7,
// 8,9,10,11
