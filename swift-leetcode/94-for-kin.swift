//
//  main.swift
//  swift-leetcode
//
//  Created by Kazutaka Homma on 2023/05/02.
//

import Foundation
// 94

public class TN {
    public var val: Int
    public var left: TN?
    public var right: TN?
    public init() { val = 0; left = nil; right = nil }
    public init(_ val: Int) { self.val = val; left = nil; right = nil }
    public init(_ val: Int, _ left: TN?, _ right: TN?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func inorderTraversalRec(_ root: TN?) -> [Int] {
    guard let root = root else { return [] }
    return inorderTraversalRec(root.left) + [root.val] +
        inorderTraversalRec(root.right)
}

func inorderTraversal(_ root: TN?) -> [Int] {
    var ans = [Int]()
    var ancestor = [TN?]()
    var curr = root
    while curr != nil || !ancestor.isEmpty {
        while curr != nil {
            ancestor.append(curr)
            curr = curr?.left
        }
        curr = ancestor.popLast()!
        ans.append(curr!.val)
        curr = curr?.right
    }
    return ans
}

func main() {
    print(inorderTraversal(TN(1, nil, TN(2, TN(3), nil))))
    print(inorderTraversal(TN(4, TN(2, TN(1), TN(3)), TN(6, TN(5), TN(7)))))
}

main()
//      4
//   2      6
// 1   3  5    7
