// 剑指 Offer 05. 替换空格
// https://leetcode-cn.com/problems/ti-huan-kong-ge-lcof/submissions/
// 这道题也是比较偏向于C、C++，主要考察数组扩容、扩容时的数据搬移等，所带来的开销。我认为Swift不会考察这道题
class Offer05 {
    static func replaceSpace(_ s: String) -> String {
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
