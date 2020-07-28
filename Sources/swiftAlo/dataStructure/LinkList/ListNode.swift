//
//  File.swift
//  
//
//  Created by wangyang on 2020/7/28.
//

import Foundation

class ListNode: Equatable {
    var next: ListNode?
    var value: Int
    
    init(_ value: Int) {
        self.value = value
    }

    static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs.value == rhs.value
    }
}
