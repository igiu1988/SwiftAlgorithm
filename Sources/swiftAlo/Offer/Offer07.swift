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

class Offer07 {
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        if preorder.count == 0 || inorder.count == 0 {
            return nil
        }
        
        let rootValue = preorder.first!
        let rootIndexInorder = inorder.firstIndex(of: rootValue)!

        let root = TreeNode(rootValue)
        
        // 如果有左子树，rootIndexInorder > 0
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
