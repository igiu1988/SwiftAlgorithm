
class TreeNode: Equatable {
    var left: TreeNode?
    var right: TreeNode?
    var value: Int?
    
    init(_ value: Int?) {
        self.value = value
        print("Node create")
    }

    static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.value == rhs.value
    }
}

// extension Node:  {
    
// }
