//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/04.
//

import Foundation

// 142

/**
 * Definition for singly-linked list. */
private class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

extension ListNode: Hashable {
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs === rhs
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(ObjectIdentifier(self))
    }
}

fileprivate class Solution142 {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        var s = Set<ListNode>()
        var curr = head
        var i = 0
        while curr != nil {
            if s.contains(curr!) {
                return curr
            }
            s.insert(curr!)
            i += 1
            curr = curr?.next
        }
        return nil
    }
    
    func detectCycleFloyd(_ head: ListNode?) -> ListNode? {
        var (head, slow, fast) = (head, head?.next, head?.next?.next)
        while fast != nil && slow !== fast {
            slow = slow?.next
            fast = fast?.next?.next
        }
        while head !== fast {
            head = head?.next
            fast = fast?.next
        }
        return head
    }


}
