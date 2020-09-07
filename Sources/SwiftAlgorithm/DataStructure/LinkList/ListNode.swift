//
//  File.swift
//  
//
//  Created by wangyang on 2020/7/28.
//

import Foundation

public class ListNode: Equatable {
    public var next: ListNode?
    public var value: Int
    
    public init(_ value: Int) {
        self.value = value
    }

    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs.value == rhs.value
    }
}
