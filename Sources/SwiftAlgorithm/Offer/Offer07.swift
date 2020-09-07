//
//  File.swift
//  
//
//  Created by wangyang on 2020/8/16.
//

import Foundation

/**
* Definition for a binary tree node.
* public class TreeNode {
*     public var val: Int
*     public var left: TreeNode?
*     public var right: TreeNode?
*     public init(_ val: Int) {
*         self.val = val
*         self.left = nil
*         self.right = nil
*     }
* }
*/

public class Offer07 {
    public func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        if preorder.count == 0 || inorder.count == 0 {
            return nil
        }

        var inorderDic: [Int: Int] = [:]
        for (i, value) in inorder.enumerated() {
            inorderDic[value] = i
        }
        
        let root = build(preorder, inorder, inorderDic, 0, preorder.count - 1, 0, inorder.count - 1)
        return root
    }
    
    func build(_ preorder: [Int], _ inorder: [Int], _ inorderDic: [Int: Int], _ preStart: Int, _ preEnd: Int, _ inStart: Int, _ inEnd: Int) -> TreeNode? {
        if preStart > preEnd {
            return nil
        }
        
        let rootValue = preorder[preStart]
        let rootIndexInorder = inorderDic[rootValue]!
        let root = TreeNode(rootValue)
        
        if preEnd > preStart {
            let leftTreeCount = rootIndexInorder - inStart
            let inOrderLeftTreeStart = inStart
            let inOrderLeftTreeEnd = rootIndexInorder - 1
            let preOrderLeftTreeStart = preStart + 1
            let preOrderLeftTreeEnd = preStart + leftTreeCount
            
            root.left = build(preorder, inorder, inorderDic, preOrderLeftTreeStart, preOrderLeftTreeEnd, inOrderLeftTreeStart, inOrderLeftTreeEnd)
            
            let rightTreeCount = inEnd - rootIndexInorder
            let inorderRTStart = rootIndexInorder + 1
            let inorderRTEnd = inEnd
            let preorderRTStart = preEnd - rightTreeCount + 1
            let preorderRTEnd = preEnd
            root.right = build(preorder, inorder, inorderDic, preorderRTStart, preorderRTEnd, inorderRTStart, inorderRTEnd)
        }
        return root
    }
    
    // MARK: - 更易懂，但是空间、时间效率稍低
    public func buildTree_2(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        if preorder.count == 0 || inorder.count == 0 {
            return nil
        }
        
        let rootValue = preorder.first!
        let rootIndexInorder = inorder.firstIndex(of: rootValue)!

        let root = TreeNode(rootValue)
        
        // 如果有左子树，那么 rootIndexInorder > 0 肯定成立
        if rootIndexInorder > 0 {
            let leftArrayInorder = Array(inorder[0..<rootIndexInorder])
            let leftArrayPreOrder = Array(preorder[1...leftArrayInorder.count])
            root.left = buildTree(leftArrayPreOrder, leftArrayInorder)
        }
        
        if inorder.count > rootIndexInorder + 1 {
            let rightArrayInorder = Array(inorder[(rootIndexInorder + 1)..<inorder.count])
            let rightArrayPreorder = Array(preorder[(preorder.count - rightArrayInorder.count)..<preorder.count])
            root.right = buildTree(rightArrayPreorder, rightArrayInorder)
        }
        
        return root
    }
}
