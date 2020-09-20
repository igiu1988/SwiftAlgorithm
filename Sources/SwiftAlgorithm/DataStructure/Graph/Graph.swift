//
//  Graph.swift
//  
//
//  Created by wangyang on 2020/9/20.
//

// 无向图数据结构
public class Graph {
    private var v: Int
    // 链接表结构
    private var adj: [LinkList]
    
    public init(_ v: Int) {
        self.v = v
        self.adj = [LinkList]()
        // 链接表初始化为空链表
        for _ in 0..<v {
            adj.append(LinkList(nil))
        }
    }
    
    // 因为是无向图，所以分别添加两次：s顶点所在的链表添加一个node：t，反之亦然
    public func addEdge(_ s: Int, _ t: Int) {
        adj[s].add(t)
        adj[t].add(s)
    }
    
    public func printGraph() {
        for (i, linkList) in self.adj.enumerated() {
            print("\(i)：", terminator: "")
            linkList.printList()
        }
    }
    
    // 在当前图中找到从s到t的最短路径
    /*
     1. 首先看懂代码
     2. 为什么是最短路径
     */
    public func bfs(_ s: Int, _ t: Int) {
        if s == t {
            return
        }
        // visited是用来记录已经被访问的顶点，用来避免顶点被重复访问。
        var visited = [Bool].init(repeating: false, count: v)
        visited[s] = true
        
        // queue是一个队列，用来存储已经被访问、但相连的顶点还没有被访问的顶点。
        var queue = [Int]()
        queue.append(s)
        
        // prev用来记录搜索路径。
        var prev = Array<Int>.init(repeating: -1, count: v)
        
        while queue.count != 0 {
            let w = queue.removeFirst() // Int
            let linkList = adj[w]
            var node = linkList.head
            while node != nil {
                let q = node!.value
                if !visited[q] {
                    prev[q] = w
                    if q == t {
                        printPath(prev, s, t)
                        return
                    }
                    visited[q] = true
                    queue.append(q)
                }
                node = node?.next
            }
        }
    }
    
    public func printPath(_ path: [Int], _ s: Int, _ t: Int) {
        if path[t] != -1 && t != s {
            printPath(path, s, path[t])
        }
        print("\(t) -> ", terminator: "")
    }
}
