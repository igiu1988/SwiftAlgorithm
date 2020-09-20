//
//  GraphTests.swift
//  
//
//  Created by wangyang on 2020/9/20.
//

import XCTest
@testable import SwiftAlgorithm

final class GraphTests: XCTestCase {
    func testBFS() {
        let graph = Graph(8)
        graph.addEdge(0,1)
        graph.addEdge(0,3)
        graph.addEdge(1,2)
        graph.addEdge(1,4)
        graph.addEdge(2,5)
        graph.addEdge(4,5)
        graph.addEdge(4,6)
        graph.addEdge(5,7)
        graph.addEdge(6,7)
        graph.printGraph()
        graph.bfs(0,6) // 广度优先
//                graph.dfs(0, 6) // 深度优先
        
    }
}
