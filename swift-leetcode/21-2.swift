//
//  21-2.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/29.
//

import Foundation

// 21



public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


func solution(list1: ListNode?, list2: ListNode?) ->ListNode? {
    var l1 = list1, l2 = list2
    let head = ListNode(-101)
    var curr: ListNode? = head
    while curr != nil {
        if (l1?.val ?? 101) <= (l2?.val ?? 101) {
            curr?.next = l1
            l1 = l1?.next
            
        } else {
            curr?.next = l2
            l2 = l2?.next
        }
        curr = curr?.next
    }
    return head.next
}

func main() {
    solution(list1: nil, list2: nil)
}
main()

// biggest value? 100
// smallest value? -100
// list can be empty?
