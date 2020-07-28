// 剑指 Offer 05. 替换空格
// https://leetcode-cn.com/problems/ti-huan-kong-ge-lcof/submissions/
class Offer05 {
    func replaceSpace(_ s: String) -> String {
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