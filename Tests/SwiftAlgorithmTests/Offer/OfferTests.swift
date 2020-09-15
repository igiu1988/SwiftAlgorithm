//
//  OfferTests.swift
//  
//
//  Created by wangyang on 2020/8/16.
//

import XCTest
@testable import SwiftAlgorithm

final class OfferTests: XCTestCase {
    func testOffer03() {
        XCTAssertEqual(Offer03().findRepeatNumber([1,2,3,4,4,5]), 4)
    }

    func testOffer06() {
//        XCTAssertEqual(Offer06.reversePrint(link.head), [2,3,1])
    }
    
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
    
    func testOffer08() {
        let tree = BinaryTree(nums: [3, 9, nil, nil, 20, 15, 7])
        let node = Offer08().solution(node: tree.root!.left!)
        print("\(node!.value!)")
        XCTAssert(node?.value != 3, "错啦")
    }
    
    
    func testOffer11() {
        XCTAssertEqual(Offer11().minArray([3,4,5,1,2]), 1)
        XCTAssertEqual(Offer11().minArray([3,3,1,3]), 1)
        XCTAssertEqual(Offer11().minArray([3]), 3)
        
    }
    
    func testOffer12() {
        let board: [[Character]] = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
        let word = "ABCCED"
        XCTAssertTrue(Offer12().exist(board, word))
    }

//    static var allTests = [
//        ("testExample", testExample),
//    ]
}
