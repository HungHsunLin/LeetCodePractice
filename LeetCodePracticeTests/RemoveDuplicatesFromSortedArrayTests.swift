//
//  LeetCodePracticeTests.swift
//  LeetCodePracticeTests
//
//  Created by HUNG-HSUN LIN on 2022/7/22.
//

import XCTest
@testable import LeetCodePractice

class RemoveDuplicatesFromSortedArrayTests: XCTestCase {
    var sut: RemoveDuplicatesFromSortedArray!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = RemoveDuplicatesFromSortedArray()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testRemoveDuplicatesFromSortedArray() throws {
        // given
        var nums = [0, 1, 1, 2, 3, 3, 3, 4, 4, 5, 5, 5, 5, 6, 7, 7, 7, 7, 8]
        let resultNums = [0, 1, 2, 3, 4, 5, 6, 7, 8]
        
        // when
        let result = sut.removeDuplicates(&nums)
        
        // then
        XCTAssertEqual(Array(nums.prefix(9)), resultNums)
        XCTAssertTrue(result == 9)
    }
}
