// 剑指 Offer 11. 旋转数组的最小数字
// https://leetcode-cn.com/problems/xuan-zhuan-shu-zu-de-zui-xiao-shu-zi-lcof/
class Offer11 {
    public func minArray(_ numbers: [Int]) -> Int {
        var low = 0
        var high = numbers.count - 1
        // 这种取中位数的方式，对于偶数位时，会取到中间靠右的数
        // 对于奇数，会取到中间数

        // 完整二分logn
        while low < high {
            
            let mid = low + (high - low) / 2 
            let midValue = numbers[mid]
            if midValue > numbers[high] {
                if high - low > 1 {
                    low = mid
                } else {
                    return numbers[high]
                }
                
            } else if midValue <= numbers[high] {
                if high - low > 1 {
                    high = mid
                } else {
                    return midValue
                }
            }
        }
        return 0
    }
}
