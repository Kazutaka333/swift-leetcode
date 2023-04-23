//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/10.
//

import Foundation

// 278

/**
 * The knows API is defined in the parent class VersionControl. */
func isBadVersion(_: Int) -> Bool {
    return true
}

class Solution278 {
    func firstBadVersion(_ n : Int) -> Int {
        return helper(low: 1, high: n)
    }
    
    func helper(low: Int, high: Int) -> Int {
        if low == high {
            return low
        }
        let mid = (low + high)/2
        if isBadVersion(mid) {
            return helper(low: low, high: mid)
        } else {
            return helper(low: mid+1, high: high)
        }
    }
    
    func helperLoop(_ n: Int) -> Int {
        var low = 1, high = n
        
        while low < high {
            let mid = (low + high) / 2
            if isBadVersion(mid) {
                high = mid
            } else {
                low = mid + 1
            }
        }
        return low
    }
}
