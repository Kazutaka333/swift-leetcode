//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/12.
//

import Foundation

// 235

/**
 * Definition for a binary tree node.*/
fileprivate class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}
 

fileprivate class Solution235 {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        var curr = root
        while let unwrapped = curr {
            let pChoice = compare(p!.val, unwrapped.val)
            let qChoice = compare(q!.val, unwrapped.val)
            print(unwrapped.val, pChoice, qChoice)
            if pChoice != qChoice {
                return unwrapped
            }
            if pChoice > 0 {
                curr = curr?.right
            } else {
                curr = curr?.left
            }
        }
        return nil
    }

    func compare(_ a: Int,_ b: Int) -> Int {
        if a > b {
            return 1
        } else if a < b {
            return -1
        } else {
            return 0
        }
    }
}

//func main() {
//    let root = TreeNode(6)
//    let two = TreeNode(2)
//    two.left = .init(0)
//    two.right = .init(4)
//    let eight = TreeNode(8)
//    eight.left = .init(7)
//    eight.right = .init(9)
//    root.left = two
//    root.right = eight
//
//    print(Solution235().lowestCommonAncestor(root, two, two.right))
//    
//    
//}
//
