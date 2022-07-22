//
//  Remove Duplicates from Sorted Array.swift
//  LeetCodePractice
//
//  Created by HUNG-HSUN LIN on 2022/7/22.
//

import Foundation

class RemoveDuplicatesFromSortedArray {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        
        var index = 1
        
        for i in 1..<nums.count {
            if nums[i - 1] != nums[i] {
                nums[index] = nums[i]
                index += 1
            }
        }
        
        return index
    }
}
