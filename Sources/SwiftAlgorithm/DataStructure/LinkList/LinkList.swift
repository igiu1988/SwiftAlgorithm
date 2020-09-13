//
//  File.swift
//  
//
//  Created by wangyang on 2020/7/28.
//

import Foundation

public class LinkList {
    public var head: ListNode?
    public init(_ head: ListNode?) {
        self.head = head
    }
    public init(_ array: [Int]) {
        if array.count == 0 {
            head = nil
            return
        }
        
        head = ListNode(array.first!)
        var preNode = head
        for index in 1..<array.count {
            let node = ListNode(array[index])
            preNode!.next = node
            preNode = node
        }
    }
    
    public func printList() {
        var node = head
        if node == nil  {
            print("空链表")
        }
        while node != nil {
            print(node!.value)
            node = node!.next
        }
    }
    
    // leetcode 206
    public func reverse() -> LinkList {
        var current = head
        var pre: ListNode? = nil
        while current != nil {
            let next = current?.next
            current?.next = pre
            pre = current
            current = next
        }
        return LinkList(pre)
    }
}

extension LinkList: Equatable {
    public static func == (lhs: LinkList, rhs: LinkList) -> Bool {
        var lNode = lhs.head
        var rNode = rhs.head
        while lNode != nil && rNode != nil {
            if lNode != rNode {
                return false
            }
            lNode = lNode?.next
            rNode = rNode?.next
        }
        
        return true
    }
}
