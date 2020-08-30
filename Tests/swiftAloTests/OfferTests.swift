//
//  OfferTests.swift
//  
//
//  Created by wangyang on 2020/8/16.
//

import XCTest
@testable import swiftAlo

final class OfferTests: XCTestCase {
    
    
    func testOffer07_1() {
        if let node = Offer07().buildTree([3,9,20,15,7], [9,3,15,20,7]) {
            let tree = BinaryTree(node: node)
            tree.printPreOrderTree(tree.root)
        }
    }
    
    func testOffer07_2() {
        if let node = Offer07().buildTree([1, 2], [2, 1]) {
            let tree = BinaryTree(node: node)
            tree.printPreOrderTree(tree.root)
        }
    }
    
    
    func testOffer06() {
//        XCTAssertEqual(Offer06.reversePrint(link.head), [2,3,1])
    }
    
    func testOffer03() {
        XCTAssertEqual(Offer03().findRepeatNumber([1,2,3,4,4,5]), 4)
    }

//    static var allTests = [
//        ("testExample", testExample),
//    ]
}
