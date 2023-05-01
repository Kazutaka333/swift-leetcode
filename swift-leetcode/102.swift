//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/06.
//

import Foundation
//102
/**
 * Definition for a binary tree node. */
private class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { val = 0; left = nil; right = nil }
    public init(_ val: Int) { self.val = val; left = nil; right = nil }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

fileprivate class Solution102 {
    var result = [[Int]]()
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        result = []
        helper(node: root)
        return result
    }
    
    func helper(node: TreeNode?, level: Int = 0) {
        guard let node = node else { return }
        if result.count <= level {
            result.append([])
        }
        result[level] += [node.val]
        helper(node: node.left, level: level+1)
        helper(node: node.right, level: level+1)
    }
}
//
//print(Solution().result)
//print(Solution().levelOrder(.init(1)))
//print(Solution().result)
