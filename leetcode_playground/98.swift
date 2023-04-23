//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/11.
//

import Foundation

// 98

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

private class Solution {
    func isValidBSTLoop(_ root: TreeNode?) -> Bool {
        var stack: [(TreeNode?, Int?, Int?)] = [(root, nil, nil)]
        while !stack.isEmpty {
            let (curr, min, max) = stack.popLast()!
            guard let curr = curr else { continue }
            if let min = min, min >= curr.val {
                return false
            }
            if let max = max, max <= curr.val {
                return false
            }
            stack.append((curr.left, min, curr.val))
            stack.append((curr.right, curr.val, max))
        }
        return true
    }

    func isValidBST(
        _ root: TreeNode?,
        min: Int? = nil,
        max: Int? = nil
    ) -> Bool {
        guard let node = root else {
            return true
        }
        if let min = min, min >= node.val {
            return false
        }
        if let max = max, max <= node.val {
            return false
        }
        return isValidBST(node.left, min: min, max: node.val) &&
            isValidBST(node.right, min: node.val, max: max)
    }
}
