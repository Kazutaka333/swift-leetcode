//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/29.
//

import Foundation
// 203
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { val = 0; next = nil }
    public init(_ val: Int) { self.val = val; next = nil }
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val; self.next = next
    }
}

extension ListNode: CustomStringConvertible
{
    public var description: String {
        guard let next = next else {
            return "\(val)-nil"
        }
        return "\(val)-\(next)"
        
    }
}

// 203
func solution(head: ListNode?, val: Int) -> ListNode? {
    let prev = ListNode(0, head)
    var curr: ListNode? = prev
    while curr != nil {
        if curr?.next?.val == val {
            curr?.next = curr?.next?.next
        } else {
            curr = curr?.next
        }
    }
    return prev.next
}

func main() {
    let h = ListNode(7, ListNode(7, ListNode(9)))
    print(solution(head: h, val: 0))
}

main()

// Input: head = [1,2,6,3,4,5,6], val = 6
// Output: [1,2,3,4,5]

// list can be empty?
// val fits in Int?
