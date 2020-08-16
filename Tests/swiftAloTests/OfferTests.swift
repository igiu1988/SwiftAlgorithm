//
//  OfferTests.swift
//  
//
//  Created by wangyang on 2020/8/16.
//

import XCTest
@testable import swiftAlo

final class OfferTests: XCTestCase {
    
    
    func testOffer07() {
        
        
        if let node = Offer07().buildTree([3,9,20,15,7], [9,3,15,20,7]) {
            let tree = BinaryTree(node: node)
            tree.printPreOrderTree(tree.root)
        } else {
            
        }
//        tree.print
//        XCTAssertEqual(Offer06.reversePrint(link.head), [2,3,1])
    }

//    static var allTests = [
//        ("testExample", testExample),
//    ]
}
