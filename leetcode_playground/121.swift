//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/05.
//

import Foundation

// 121

private class Solution121 {
    func maxProfit(_ prices: [Int]) -> Int {
        var minimum = prices[0]
        var ans = 0
        for p in prices {
            ans = max(ans, p - minimum)
            minimum = min(p, minimum)
        }
        return ans
    }
}

// print(Solution().maxProfit([1, 2, 3]))
// print(Solution().maxProfit([3, 2, 3]))
// print(Solution().maxProfit([3, 2, 1]))
// print(Solution().maxProfit([3]))
// print(Solution().maxProfit([7, 1, 5, 3, 6, 4]))
