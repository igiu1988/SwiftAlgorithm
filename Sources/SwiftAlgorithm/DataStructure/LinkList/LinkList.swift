//
//  File.swift
//  
//
//  Created by wangyang on 2020/7/28.
//

import Foundation

public class LinkList {
    public var head: ListNode?
    public init(_ array: [Int]) {
        if array.count > 0 {
            head = ListNode(array.first!)
        }
        if array.count > 1 {
            var preNode = head
            for index in 1..<array.count {
                let node = ListNode(array[index])
                preNode!.next = node
                preNode = node

            }
            
//            var preNode = head
//            for num in array {
//                let node = ListNode(num)
//                preNode!.next = node
//                preNode = node
//            }
        }
        
        
//        var preNode = head
//        for num in array {
//            let node = ListNode(array[index])
//            preNode.next = node
//            preNode = node
//        }
        
    }
    
    public func printList() {
        var node = head
        while node != nil {
            print(node!.value)
            node = node!.next
        }
    }
}
