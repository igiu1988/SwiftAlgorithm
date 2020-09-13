//
//  File.swift
//  
//
//  Created by wangyang on 2020/9/1.
//

// 用两个栈实现队列  
class Offer08 {
    public func solution(node: TreeNode) -> TreeNode? {
        
        // 如果node的右子树存在，那么下一个节点一定是子树的左叶子
        if node.right != nil {
            var current = node.right!
            while current.left != nil {
                current = current.left!
            }
            return current
        } else if node.parent != nil {
            // 对于有父元素的还需要仔细考虑
            var current = node
            var parent = node.parent
            // 如果node是右子树，就需要循环向上查找还未打印的父元素
            // 如果没有进入这个循环，说明node是左子树，直接return
            while current == parent?.right && current.parent != nil {
                current = parent!
                parent = parent!.parent
            }
            return current
        } else {
            return nil;
        }
        
        
    }
}
