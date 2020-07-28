// 剑指 Offer 06. 从尾到头打印链表
// https://leetcode-cn.com/problems/cong-wei-dao-tou-da-yin-lian-biao-lcof/
class Offer06 {
    static func reversePrint(_ head: ListNode?) -> [Int] {
        var linkListHead = head
        var stack = Stack<Int>()
        stack.capacity = 10
        while linkListHead != nil {
            stack.push(element: linkListHead!.value)
            linkListHead = linkListHead!.next
        }
        let result = stack.map { $0 }
        
        return result
    }
}

