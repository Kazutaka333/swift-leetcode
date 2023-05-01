//
//  main.swift
//  leetcode_playground
//
//  Created by Kazutaka Homma on 2023/04/25.
//

import Foundation

// 88
func solution(nums1: inout [Int], nums2: [Int], m: Int, n: Int) {
    var nums2 = nums2
    var i2 = n - 1
    var i1 = m - 1
    for insertAt in (0..<(m+n)).reversed() {
        if i2 < 0 || (i1 >= 0 && nums1[i1] > nums2[i2]) {
            (nums1[insertAt], nums1[i1]) = (nums1[i1], nums1[insertAt])
            i1 -= 1
        } else {
            (nums1[insertAt], nums2[i2]) = (nums2[i2], nums1[insertAt])
            i2 -= 1
        }
    
    }
}
func main() {
    var nums1 = [1,2,3,0,0,0]
    print(solution(nums1: &nums1, nums2: [2,5,6], m: 3, n: 3))
    print(nums1)
    var n1 = [1], n2 = [2]
    print(n1, n2)
    (n1[0], n2[0]) = (n2[0], n1[0])
    print(n1, n2)
}

main()
// num1 and num2 can be empty
// -10^9 <= elements <= 10^9

// brute force
// just copy num2 into num1 and sort the num1 -> nlogn

// [1,2,3,0,0,0]
// [2,5,6]
// [1,2,3,0,0,6]
// [2,5,0]
// [1,2,3,0,5,6]
// [2,0,0]
// [1,2,0,3,5,6]
// [2,0,0]
// [1,2,2,3,5,6]
// [0,0,0]

// [2,5,6,0,0,0]
// [1,2,3]
// [2,5,0,0,0,6]
// [1,2,3]
// [2,0,0,0,5,6]
// [1,2,3]
// [2,0,0,3,5,6]
// [1,2,0]
// [2,0,2,3,5,6]
// [1,0,0]
// [0,2,2,3,5,6]
// [1,0,0]
// [1,2,2,3,5,6]
// [0,0,0]
