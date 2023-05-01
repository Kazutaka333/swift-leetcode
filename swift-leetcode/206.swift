//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/03.
//

import Foundation

private class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { val = 0; next = nil }
    public init(_ val: Int) { self.val = val; next = nil }
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val; self.next = next
    }
}

private class Solution206 {
    func reverseListRecursive(_ head: ListNode?) -> ListNode? {
        if head?.next == nil {
            return head
        }
        let next = head?.next
        head?.next = nil
        let newHead = reverseList(next)
        next?.next = head
        return newHead
    }

    func reverseList(_ head: ListNode?) -> ListNode? {
        var curr = head
        var prev: ListNode?
        while curr != nil {
            let temp = curr?.next
            curr?.next = prev
            prev = curr
            curr = temp
        }
        return prev
    }
}
