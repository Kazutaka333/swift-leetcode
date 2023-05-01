//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/04.
//

import Foundation

// 876

private class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { val = 0; next = nil }
    public init(_ val: Int) { self.val = val; next = nil }
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val; self.next = next
    }
}

private class Solution876 {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var isMidJustMoved = false
        var end = head
        var mid = head
        while end?.next != nil {
            end = end?.next
            if isMidJustMoved {
                isMidJustMoved = false
            } else {
                mid = mid?.next
                isMidJustMoved = true
            }
        }
        return mid
    }
}

// (1)
// 1 (2)
// 1 (2) 3
// 1 2 (3) 4
// 1 2 (3) 4 5
// 1 2 3 (4) 5 6
// 1 2 3 (4) 5 6 7
// 1 2 3 4 (5) 6 7 8
// 1 2 3 4 (5) 6 7 8 9
