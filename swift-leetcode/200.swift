//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/30.
//

import Foundation


// 200

var visited = Set<[Int]>()
func numIslands(_ grid: [[Character]]) -> Int {
    var answer = 0
    for (y, row) in grid.enumerated() {
        for (x, _) in row.enumerated() {
            if grid[y][x] == "1"{
                answer += dfs(grid: grid, x: x, y: y)
            }
        }
    }
    return answer
}

func dfs(grid: [[Character]], x: Int, y: Int) -> Int {
    if visited.contains([x, y]) {
        return 0
    }
    var stack = [[x, y]]
    while stack.count > 0 {
        let cell = stack.popLast()!
        let x = cell[0], y = cell[1]
        if !(x >= 0 && x < grid[0].count && y >= 0 && y < grid.count) || visited
            .contains(cell)
        {
            continue
        }
        visited.insert(cell)
        if grid[y][x] == "1" {
            stack.append([x + 1, y])
            stack.append([x - 1, y])
            stack.append([x, y + 1])
            stack.append([x, y - 1])
        }
    }
    return 1
}

func main() {
    print(numIslands( [
        ["1","1","1","1","0"],
        ["1","1","0","1","0"],
        ["1","1","0","0","0"],
        ["0","0","0","0","0"]
      ]
))
}

main()
