//
//  File.swift
//  
//
//  Created by wangyang on 2020/9/2.
//

import XCTest
@testable import swiftAlo

final class SortTests: XCTestCase {
    
    func testQuickSort() {
        var arr = [3, 9, 20, 15, 7]
        QuickSort().quickSort(&arr)
        print(arr)
        XCTAssertEqual(arr[0], 3)
        XCTAssertEqual(arr[1], 7)
        XCTAssertEqual(arr[2], 9)
    }
}
