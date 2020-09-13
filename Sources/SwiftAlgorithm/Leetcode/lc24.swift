//
//  lc24.swift
//  
//
//  Created by wangyang on 2020/9/13.
//

import Foundation
// 24. 两两交换链表中的节点
public class lc24 {
    public func swapPairs(_ head: ListNode?) -> ListNode? {
        let result = head?.next
        if result == nil {
            return head
        }

        var cur = head
        var next = cur?.next
        var pre: ListNode? = nil
        while cur != nil && next != nil {
            pre?.next = next
            let temp = next?.next
            next?.next = cur
            cur?.next = temp

            pre = cur
            cur = temp
            next = cur?.next
        }
        return result
    }
    
    public func swapPairsRecurse(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        let first = head
        let second = head?.next
        
        first?.next = swapPairsRecurse(second?.next)
        second?.next = first
        return second
    }
}
