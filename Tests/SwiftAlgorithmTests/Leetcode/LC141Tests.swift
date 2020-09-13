//
//  File.swift
//  
//
//  Created by wangyang on 2020/9/13.
//

import Foundation

import XCTest
@testable import SwiftAlgorithm

class LC141Tests: XCTest {
    func testHasCycle() {
        let link = LinkList([1, 2,3,4,5,6,3])
        XCTAssertTrue(LC141().hasCycle(link.head))
        let link1 = LinkList([3,2,0,-4])
        XCTAssertFalse(LC141().hasCycle(link1.head))
        
    }
}
