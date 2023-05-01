//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/02.
//

import Foundation


private class ListNode {
    public var val: Int
    public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }

fileprivate func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    let headPrev = ListNode(0, nil)
    var l1 = list1
    var l2 = list2
    var prev: ListNode? = headPrev
    while l1 != nil && l2 != nil {
        if (l1!.val < l2!.val) {
            prev!.next = l1
            prev = l1
            l1 = l1!.next
        } else {
            prev!.next = l2
            prev = l2
            l2 = l2!.next
        }
    }
    if l1 != nil {
        prev?.next = l1
    }
    if l2 != nil {
        prev?.next = l2
    }
    
    return headPrev.next
}

