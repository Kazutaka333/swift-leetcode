//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/26.
//

import Foundation
// 121

func solution(prices: [Int]) -> Int {
    var minimum = 99999
    var answer = 0
    for p in prices {
        answer = max(answer, p - minimum)
        minimum = min(p, minimum)
    }
    return answer
}

// prices could be empty? no at least one element
// prices always >= 0

// [7,1,5,3,6,4]
// minimum= 99999, answer=0

//7 minimum= 7, answer=0
//1 minimum= 1, answer=0
//5 minimum= 1, answer=4
//3 minimum= 1, answer=4
//6 minimum= 1, answer=5
//4 minimum= 1, answer=5

//  [7,6,4,3,1]
//7 answer=0, minimum=7
//6 answer=0, minimum=6
//4 answer=0, minimum=4
//3 answer=0, minimum=3
//1 answer=0, minimum=1

