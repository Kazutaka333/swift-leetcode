//
//  main.swift
//  swift-leetcode
//
//  Created by Kazutaka Homma on 2023/05/02.
//

import Foundation
// 144

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func solution(root: TreeNode?) -> [Int] {
    var stack = [root]
    var ans = [Int]()
    while !stack.isEmpty {
        if let curr = stack.popLast()! {
            ans.append(curr.val)
            stack.append(curr.right)
            stack.append(curr.left)
        }
    }
    return ans
}

func soltionRec(root: TreeNode?) -> [Int] {
    guard let root = root else { return [] }
    return [root.val]+solution(root: root.left)+solution(root: root.right)
}

//     1
//  2     5
//3   4 6   7

// n + n/2 + n/4 = n(1 + 1/2 + 1/4)
