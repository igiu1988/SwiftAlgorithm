// 剑指 Offer 11. 旋转数组的最小数字
// https://leetcode-cn.com/problems/xuan-zhuan-shu-zu-de-zui-xiao-shu-zi-lcof/
class Offer11 {
    public func minArray(_ numbers: [Int]) -> Int {
        var low = 0
        var high = numbers.count - 1
        while low < high {
            let mid = low + (high - low) / 2 
            let midValue = numbers[mid]
            if midValue > numbers[high] {
                low = mid + 1
            } else if midValue < numbers[high] {
                high = mid
            } else {
                high -= 1
            }
        }
        return numbers[low]
    }
}
