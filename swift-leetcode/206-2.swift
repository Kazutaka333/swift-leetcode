//
//  main.swift
//  swift-leetcode
//
//  Created by Kazutaka Homma on 2023/05/02.
//

import Foundation
// 206-2



public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


func solution(head: ListNode?) -> ListNode? {
    var prev: ListNode?
    var curr = head
    while curr != nil {
        let next = curr?.next
        curr?.next = prev
        prev = curr
        curr = next
    }
    return prev
}
