//
//  File.swift
//  
//
//  Created by wangyang on 2020/9/13.
//
import XCTest
@testable import SwiftAlgorithm

final class lc24Tests: XCTestCase {
    func testlc24() {
        let list = LinkList([1,2,3,4,5,6])
        let node = lc24().swapPairs(list.head)
        let swapList = LinkList(node)
        swapList.printList()
        XCTAssertEqual(swapList, LinkList([2,1,4,3,6,5]))
    }
    
    func testlc24_1() {
        let list = LinkList([1,2,3,4,5])
        let node = lc24().swapPairs(list.head)
        let swapList = LinkList(node)
        swapList.printList()
        XCTAssertEqual(swapList, LinkList([2,1,4,3,5]))
    }
    
    func testlc24_2() {
        let list = LinkList(nil)
        let node = lc24().swapPairs(list.head)
        let swapList = LinkList(node)
        swapList.printList()
        XCTAssertEqual(swapList, LinkList(nil))
    }
    
    func testlc24_3() {
        let list = LinkList([1])
        let node = lc24().swapPairs(list.head)
        let swapList = LinkList(node)
        swapList.printList()
        XCTAssertEqual(swapList, LinkList([1]))
    }

}
