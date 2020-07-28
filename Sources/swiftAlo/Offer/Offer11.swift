// 剑指 Offer 11. 旋转数组的最小数字
// https://leetcode-cn.com/problems/xuan-zhuan-shu-zu-de-zui-xiao-shu-zi-lcof/
class Offer11 {
    func minArray(_ numbers: [Int]) -> Int {
        var low = 0
        var high = numbers.count - 1
        // 这种取中位数的方式，对于偶数位时，会取到中间靠右的数
        // 对于奇数，会取到中间数

        // 完整二分logn
        while low < high {
            let first = numbers[low]
            let last = numbers[high]
            let mid = low + (high - low) / 2 
            let midValue = numbers[mid]
            if high - low == 1 {
                return last < first ? last : first
            }
            else if first > midValue && midValue < last {
                high = mid
            } else if first < midValue && midValue > last {
                low = mid
            }  else if first < midValue && midValue < last {
                return first
            } 
        }
        return -1
    }
}
