
// 对于普通二叉树
// TODO: 分别写出数组与链表实现方式的以下算法
// todo: 前、中、后序遍历
// todo: level遍历

// todo: 高度
// todo: 叶子节点个数
// todo: 打印叶子节点

// 对于二叉查找树：插入、删除、查找、最大节点，最小节点
// todo: 对于二叉查找树：前驱节点，后继节点
// todo: 中序遍历可以输出有序的数据序列，时间复杂度是n，非常高效。因此二叉查找树也被称为“二叉排序树”

class BinaryTree {
    var root: TreeNode? = nil

    init(node: TreeNode) {
        self.root = node
    }
    
    // 使用数组方式创建
    init(nums: [Int?]) {
        root = createTree(at: 0, with: nums)
    }
    
    func createTree(at index: Int, with nums: [Int?] ) -> TreeNode? {
        if index >= nums.count {
            return nil
        }
        if nums[index] == nil {
            return nil
        }
        
        let node = TreeNode(nums[index]);
        node.left = createTree(at: 2 * index + 1, with: nums);
        node.right = createTree(at: 2 * index + 2, with: nums);
        return node
    }
    
    // 使用后序遍历打印整个树
    func printPostOrderTree(_ node: TreeNode?) {
        if (node == nil) {
            return
        }
        printPostOrderTree(node!.left)
        printPostOrderTree(node!.right)
        print(node!.value!)
    }

    // 使用前序遍历打印整个树
    func printPreOrderTree(_ node: TreeNode?) {
        if (node == nil) {
            return
        }
        print(node!.value!)
        printPreOrderTree(node!.left);
        printPreOrderTree(node!.right);
    }
    
    static func demo() {
        let arr = [-10,9,20,nil,nil,15,7]
        let tree = BinaryTree(nums: arr);
        tree.printPreOrderTree(tree.root);
    }
}

