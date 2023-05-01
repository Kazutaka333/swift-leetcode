//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/05.
//

import Foundation
// 409

class Solution409 {
    func longestPalindrome(_ s: String) -> Int {
        var map = [Character: Int]()
        for c in s {
            map[c, default: 0] += 1
        }
        var ans = 0
        var hasOdd = false
        for v in map.values {
            ans += v / 2 * 2
            hasOdd = hasOdd || v % 2 == 1
        }
        return ans + (hasOdd ? 1 : 0)
    }
}

// print(Solution().longestPalindrome("abccccdd"))
// print(Solution().longestPalindrome("eeehhhnrrttttww"))
// wttrhenehrttw
// a:1, b:1, c:4, d:2
