// 剑指 Offer 04. 二维数组中的查找
// https://leetcode-cn.com/problems/er-wei-shu-zu-zhong-de-cha-zhao-lcof/
class Code240 {
    func findNumberIn2DArray(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.count == 0 {
            return false
        }
        var m = 0 // matrix.count // 第几行
        var n = matrix[0].count - 1 //行中的第几个元素
        while m < matrix.count && n >= 0 {
            let v = matrix[m][n]
            if target < v {
                // 待查元素比当前数字小，我要继续往小里查，所以往左移动
                n -= 1
            } else if target > v {
                m += 1
            } else {
                return true
            }
        }
        return false
    }
}

// [[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]]
// 5