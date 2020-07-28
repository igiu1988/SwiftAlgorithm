
class BinarySearchTree: BinaryTree {

    // 当满足“二叉搜索树”的时候, 查找
    func find(_ data: Int) -> Node? {
        var p = root
        while p != nil {
            if data < p!.value! {
                p = p!.left
            } else if data > p!.value! {
                p = p!.right
            } else {
                return p!
            }
                
        }
        return nil
    }

    // 当满足“二叉搜索树”的时候, 插入
    func insert(_ data: Int) {
        if (root == nil) {
            root = Node(data);
            return;
        }

        var p = root;
        while let pNode = p {
            if data > pNode.value! {
                if pNode.right == nil {
                    pNode.right = Node(data)
                    return
                }
                p = pNode.right
            } else { // data < p.value
                if pNode.left == nil {
                    pNode.left = Node(data)
                    return
                }
                p = pNode.left;
            }
        }
    }

    // 当满足“二叉搜索树”的时候, 删除
    func delete(_ data: Int) {
        var p: Node? = root; // p指向要删除的节点，初始化指向根节点
        var pParent: Node? = nil; // pp记录的是p的父节点
        while let pNode = p, pNode.value! != data {
            pParent = pNode
            if data > pNode.value! {
                p = pNode.right
            } else {
                p = pNode.left
            }
        }

        if p == nil {
            return // 没有找到
        }
        var willDeleteNode = p!

        // 要删除的节点有两个子节点
        if (willDeleteNode.left != nil && willDeleteNode.right != nil) { // 查找右子树中最小节点
            var minP = willDeleteNode.right!;
            var minPP = willDeleteNode; // minPP表示minP的父节点
            while minP.left != nil {
                minPP = minP;
                minP = minP.left!;
            }
            willDeleteNode.value = minP.value; // 将minP的数据替换到p中
            willDeleteNode = minP; // 下面就变成了删除minP了
            pParent = minPP;
        }

        // 删除节点是叶子节点或者仅有一个子节点
        var child: Node? // p的子节点
        if willDeleteNode.left != nil {
            child = willDeleteNode.left
        } else if willDeleteNode.right != nil {
            child = willDeleteNode.right
        } else {
            child = nil;
        }
            

        if pParent == nil {
            root = child // 删除的是根节点
        } else if pParent!.left == willDeleteNode {
            pParent!.left = child
        } else {
            pParent!.right = child;
        }
            
    }

    // Node findMin() {
    //     if (root == nil)
    //         return nil;
    //     Node p = root;
    //     while (p.left != nil) {
    //         p = p.left;
    //     }
    //     return p;
    // }

    // Node findMax() {
    //     if (root == nil)
    //         return nil;
    //     Node p = root;
    //     while (p.right != nil) {
    //         p = p.right;
    //     }
    //     return p;
    // }

    // static void main(final String[] args) {
    //     new BinarySearchTree();
    // }


}