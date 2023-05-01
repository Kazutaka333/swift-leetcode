//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/06.
//

import Foundation


// 589

/**
 * Definition for a Node. */
class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        children = []
    }
}

class Solution589 {
    func preorderRecursion(_ root: Node?) -> [Int] {
        guard let root = root else {
            return []
        }
        var ans = [root.val]
        for child in root.children {
            ans += preorder(child)
        }
        return ans
    }
    
    func preorder(_ root: Node?) -> [Int] {
        guard let root = root else { return [] }
        var ans = [Int]()
        var stack = [root]
        while !stack.isEmpty {
            let node = stack.removeLast()
            ans += [node.val]
            stack = stack + node.children.reversed()
        }
        return ans
    }
    
}
