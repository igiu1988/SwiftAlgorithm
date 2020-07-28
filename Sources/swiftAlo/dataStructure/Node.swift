
class Node: Equatable {
    var left: Node?
    var right: Node?
    var value: Int?
    
    init(_ value: Int?) {
        self.value = value
        print("Node create")
    }

    static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.value == rhs.value
    }
}

// extension Node:  {
    
// }
