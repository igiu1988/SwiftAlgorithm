// 剑指 Offer 05. 替换空格
// https://leetcode-cn.com/problems/ti-huan-kong-ge-lcof/submissions/
// 这道题也是比较偏向于C、C++，主要考察数组扩容、扩容时的数据搬移等，所带来的开销。我认为Swift不会考察这道题。
// 不过我还是想写一下，主要是练习从后往前的做法
class Offer05 {
    
    // 对于C语言，有两种思路
    /*
     C字符串需要一次遍历得到长度
     
     思路1
     直接malloc 3倍数组长度，然后从头开始遍历
     思路2
     根据空格的个数，额外多申请精确数量的空间。然后从后遍历往新的内存空间上放。
     思路3
     假定原字符串已经有足够的空间。使用前后指针+从后遍历。前指针指向原始字符串末尾，后指针指向新字符串的头部。然后从后遍历往尾部放置
     */
    
    func replaceSpace_1(_ s: String) -> String {
        var result = ""
        for char in s {
            if char == " " {
                result.append("%20")
            }else {
                result.append(char)
            }
        }
        return result

    }
    
}
