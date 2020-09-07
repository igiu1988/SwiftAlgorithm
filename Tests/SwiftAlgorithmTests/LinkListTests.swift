//
//  File.swift
//  
//
//  Created by wangyang on 2020/7/28.
//

import XCTest
@testable import SwiftAlgorithm

final class LinkListTests: XCTestCase {
    
    
    func testLinkList() {
        let link = LinkList([1,3,2])
        link.printList()
        
        XCTAssertEqual(Offer06.reversePrint(link.head), [2,3,1])
    }

//    static var allTests = [
//        ("testExample", testExample),
//    ]
}
