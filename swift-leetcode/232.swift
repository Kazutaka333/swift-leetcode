//
//  main.swift
//  swift-leetcode
//
//  Created by Kazutaka Homma on 2023/05/02.
//

import Foundation
// 232
// https://www.youtube.com/watch?v=3MpzavN3Mco&t=6s

class MyQueue {
    private var stackIn: [Int] = []
    private var stackOut: [Int] = []

    func push(_ x: Int) {
        stackIn.append(x)
    }
    func pop() -> Int {
        peek()
        return stackOut.popLast()!
    }
    func peek() -> Int {
        if stackOut.isEmpty {
            while !stackIn.isEmpty {
                stackOut.append(stackIn.popLast()!)
            }
        }
        return stackOut.last!
    }
    func empty() -> Bool {
        return stackOut.isEmpty && stackIn.isEmpty
    }
}


func main() {
    MyQueue()
}
