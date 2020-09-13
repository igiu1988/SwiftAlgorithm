//
//  File.swift
//  
//
//  Created by wangyang on 2020/9/13.
//

// 20. 有效的括号
public class LC20 {
    public func isValid(_ s: String) -> Bool {
        let map: [Character: Character] = ["[":"]", "{":"}", "(":")"]
        var stack = [Character]()
        for ch in s {
            if let _ = map[ch] {
                stack.append(ch)
            } else {
                guard let value = stack.popLast(), map[value] == ch else {
                    return false
                }
            }
        }
        
        return stack.isEmpty

    }
}
