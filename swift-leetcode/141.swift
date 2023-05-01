//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/29.
//

import Foundation

// 141


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func solution(head: ListNode?) -> Bool {
    var slow: ListNode? = head
    var fast: ListNode? = head?.next
    while fast != nil {
        slow = slow?.next
        fast = fast?.next?.next
        if fast != nil && fast === slow {
            return true
        }
    }
    return false
}

// head can be nil? yes
