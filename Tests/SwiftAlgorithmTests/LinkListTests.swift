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

    func testReverse() {
        let link = LinkList([1,2,3,4,5,6])
        let reverseLink = link.reverse()
        reverseLink.printList()
//        XCTAssertEqual(link.reverse, [6,5,4,3,2,1])
    }
    
    func testEquatable() {
        XCTAssertEqual(LinkList([1,2,3,4,5,6]), LinkList([1,2,3,4,5,6]))
        XCTAssertFalse(LinkList([1,2,3,4,5,6]) == LinkList([1,2,3,4,5,7]))
    }
}
