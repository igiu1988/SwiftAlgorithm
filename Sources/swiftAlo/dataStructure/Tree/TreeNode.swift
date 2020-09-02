
public class TreeNode: Equatable {
    public var left: TreeNode?
    public var right: TreeNode?
    public var value: Int?
    public var parent: TreeNode?
    
    public init(_ value: Int?) {
        self.value = value
        print("Node create")
    }

    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.value == rhs.value
    }
}

// extension Node:  {
    
// }
