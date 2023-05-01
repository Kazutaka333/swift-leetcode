//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/27.
//

import Foundation
// 36

func solution(board: [[Character]]) -> Bool {
    return checkRows(board: board)
        && checkBoxes(board: board)
        && checkColumns(board: board)
}

func checkRows(board: [[Character]]) -> Bool {
    return board.allSatisfy { row in
        let rowCounter = Dictionary(
            row.map { ($0, 1) },
            uniquingKeysWith: { $0 + $1 }
        )
        return rowCounter.allSatisfy { key, value in
            key == Character(".") || value == 1
        }
    }
}

func checkColumns(board: [[Character]]) -> Bool {
    return (0 ..< 9).allSatisfy { x in
        let columnCounter = Dictionary(
            (0 ..< 9).map { (board[$0][x], 1) },
            uniquingKeysWith: { $0 + $1 }
        )
        return columnCounter.allSatisfy { key, value in
            key == Character(".") || value == 1
        }
    }
}

func checkBoxes(board: [[Character]]) -> Bool {
    return (0 ..< 9).allSatisfy { i in
        let boxCounter = [Character: Int](
            (0 ..< 9)
                .map { j in
                    let y = j % 3 + 3 * (i % 3)
                    let x = j / 3 + 3 * (i / 3)
                    return (board[y][x], 1)
                },
            uniquingKeysWith: { $0 + $1 }
        )
        return boxCounter.allSatisfy { key, value in
            key == Character(".") || value == 1
        }
    }
}

func main() {
    var board: [[Character]] = [
        [".", ".", ".", ".", ".", ".", ".", ".", "."],
        [".", ".", ".", ".", ".", ".", ".", ".", "."],
        [".", ".", ".", ".", ".", ".", ".", ".", "."],
        [".", ".", ".", ".", ".", ".", ".", ".", "."],
        [".", ".", ".", ".", ".", ".", ".", ".", "."],
        [".", ".", ".", ".", ".", ".", ".", ".", "."],
        ["0", ".", ".", ".", ".", ".", ".", ".", "."],
        [".", ".", ".", ".", ".", ".", ".", ".", "."],
        [".", ".", "1", ".", ".", ".", ".", ".", "."],
    ]
    print(solution(board: board))
}

main()
// [[0,1,2,...],
//  [3,4,5,...],
//  [6,7,8,...],
// [[(0 0),(1 0),(2 0),...],
//  [(0 1),(1 1),(2 1),...],
//  [(0 2),(1 2),(2 2),...],
// x = j%3
// y = j/3

// [[...,(3 0),(4 0),(5 0),...],
//  [...,(3 1),(4 1),(5 1),...],
//  [...,(3 2),(4 2),(5 2),...],
//  ...
// x = j%3+3*i%3
// y = j/3+3*i/3
