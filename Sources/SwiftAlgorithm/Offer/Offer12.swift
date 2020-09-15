//
//  File.swift
//  
//
//  Created by wangyang on 2020/9/14.
//

// 剑指 Offer 12. 矩阵中的路径
public class Offer12 {
    /*
     1.注意使用visited处理访问过的位置(这里使用一个小技巧，记录元素的序号)
     2.注意边界判断
     3.注意hasPath的循环终止条件，即if pathLength == word.count { return true } 位置。
     4.查找上左下右，使用两个数组，代码写起来更容易理解和不冗余。
     */
    let dx = [0,1,0,-1]
    let dy = [1,0,-1,0]
    
    public func exist(_ board: [[Character]], _ word: String) -> Bool {
        var visited = [Int]()
        var offset = 0
        for i in 0..<board.count {
            for j in 0..<board.first!.count {
                if hasPath(board, i, j, word, &offset, &visited) {
                    return true
                }
                visited.removeAll()
            }
        }
        return false
    }
    
    // pathLength 是当前要找的word中的第几个字符
    func hasPath(_ board: [[Character]], _ row: Int, _ col: Int, _ word: String, _ offset: inout Int, _ visited: inout [Int]) -> Bool {
        let cur = board[row][col]
        let char = word[word.index(word.startIndex, offsetBy: offset)]
        if cur == char {
            visited.append(row * board.first!.count + col)
            offset += 1
            if offset == word.count {
                return true
            }
            for index in 0...3 {
                let newRow = row + dx[index]
                let newCol = col + dy[index]
                if newRow >= 0 && newRow < board.count && newCol >= 0 && newCol < board.first!.count {
                    if visited.contains(newRow * board.first!.count + newCol) {
                        continue
                    }
                    if hasPath(board, newRow, newCol, word, &offset, &visited) {
                        return true
                    }
                }
            }
        } else {
            return false
        }
        return false
    }
}

public class Offer12_1 {

    public func exist(_ board: [[Character]], _ word: String) -> Bool {
        var _board = board
        var _words = word
        for i in 0..<_board.count {
            for j in 0..<_board.first!.count {
                if dfs(&_board, &_words, i, j, 0) {
                    return true
                }
            }
        }
        return false

    }
    
    // pathLength 是当前要找的word中的第几个字符
    func dfs(_ board: inout [[Character]], _ word: inout String,
             _ i: Int, _ j: Int, _ k: Int) -> Bool {
        let char = word[word.index(word.startIndex, offsetBy: k)]
        if i >= board.count || i < 0 || j >= board[0].count || j < 0 || board[i][j] != char {
            return false
        }
        if k == word.count - 1 {
            return true
        }
        let tmp = board[i][j]
        board[i][j] = "/"
        let res = dfs(&board, &word, i + 1, j, k + 1) || dfs(&board, &word, i - 1, j, k + 1) ||
                      dfs(&board, &word, i, j + 1, k + 1) || dfs(&board, &word, i , j - 1, k + 1)
        board[i][j] = tmp
        return res

    }
}
