//
//  File.swift
//  
//
//  Created by wangyang on 2020/7/28.
//

import Foundation

public class LinkList {
    public var head: ListNode?
    public var tail: ListNode?
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
        tail = preNode
    }
    
    public func printList() {
        var node = head
        if node == nil  {
            print("空链表")
        }
        while node != nil {
            print(node!.value, terminator: node!.next == nil ? "\n" : "->")
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
    
    public func add(_ val: Int) {
        if head == nil {
            head = ListNode(val)
            tail = head
        } else {
            tail?.next = ListNode(val)
            tail = tail?.next
        }
    }
    
    // 弹出（移除）第一个元素，并返回
    public func poll() -> ListNode? {
        if head != nil {
            let result = head
            head = result?.next
            return result
        } else {
            return nil
        }
    }
    
    public func peek() -> ListNode? {
        return head
    }
    
    public func size() -> Int {
        var size = 0
        var node = head
        while node != nil {
            size += 1
            node = node?.next
        }
        return size
    }
    
    public func get(index i: Int) -> ListNode? {
        var step = 0
        var node = head
        while node != nil {
            if step == i {
                return node
            }
            step += 1
            node = node?.next
        }
        return nil
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
