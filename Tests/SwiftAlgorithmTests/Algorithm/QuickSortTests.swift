//
//  File.swift
//  
//
//  Created by wangyang on 2020/9/2.
//

import XCTest
@testable import SwiftAlgorithm

final class SortTests: XCTestCase {
    
    func testQuickSort_1() {
        var arr = [3, 9, 20, 15, 7]
        QuickSort().quickSort(&arr)
        print(arr)
        XCTAssertEqual(arr, [3, 7, 9, 15, 20])
    }
    
    func testQuickSort_2() {
        var arr = [3, 16, 2, 9, 4, 20, 7, 1, 30, 15]
        QuickSort().quickSort(&arr)
        XCTAssertEqual(arr, [1, 2, 3, 4, 7, 9, 15, 16, 20, 30])
        print(arr)
    }
}
