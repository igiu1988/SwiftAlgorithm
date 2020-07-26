// 剑指 Offer 03. 数组中重复的数字
// https://leetcode-cn.com/problems/shu-zu-zhong-zhong-fu-de-shu-zi-lcof/
class Offer03 {
    func findRepeatNumber(_ nums: [Int]) -> Int {
        var _nums = nums
        var i = 0
        while i < _nums.count {
            /* 
            如果iv一样，则下一个
            
            如果i 与 v不一样，分两种情况。用举例推导法，发现规律
            情况一：交换，v往后放，i放temp，但是i不加1
            情况二：v与tmp相等，则找到重复
            */ 
            let v = _nums[i]
            if i == v {
                i += 1
                continue
            } 

            if v == _nums[v] {
                return v
            } else {
                let tmp = _nums[v]
                _nums[v] = v
                _nums[i] = tmp
            }


        }
        return -1
    }
    
}