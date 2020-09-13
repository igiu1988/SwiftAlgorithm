//
//  File.swift
//  
//
//  Created by wangyang on 2020/9/13.
//

import Foundation
// 141. 环形链表
public class LC141 {
    public func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head?.next
        var fast = head?.next?.next
        
        while fast != nil {
            if slow == fast {
                return true
            }
            
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        return false
    }
}
