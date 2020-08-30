package algorithm;
import dataStructure.*;
// 二叉树的最大路径和
// https://leetcode-cn.com/problems/binary-tree-maximum-path-sum/solution/er-cha-shu-de-zui-da-lu-jing-he-by-leetcode/

// 这一题的基础知识是二叉树的遍历
class Code124 {
    int max_sum = Integer.MIN_VALUE;
    public int max_gain(Node node) {
        if (node == null)
            return 0;

        // max sum on the left and right sub-trees of node
        int left_gain = Math.max(max_gain(node.left), 0);
        int right_gain = Math.max(max_gain(node.right), 0);

        // the price to start a new path where `node` is a highest node
        // 包含当前根节点的最大路径
        int price_newpath = node.value + left_gain + right_gain;

        // update max_sum if it's better to start a new path
        max_sum = Math.max(max_sum, price_newpath);

        // for recursion :
        // return the max gain if continue the same path
        //只返回包含当前根节点和左子树或者右子树的路径
        return node.value + Math.max(left_gain, right_gain);
    }

    public int maxPathSum(BinaryTree tree) {
        max_gain(tree.root);
        return max_sum;
    }

    public static void main(String[] args) {
        Code124 s = new Code124();
        Integer[] array = {-10,9,20,null,null,15,7};
        BinaryTree tree = new BinaryTree(array);
        System.out.println(s.maxPathSum(tree));
    }
    
}
