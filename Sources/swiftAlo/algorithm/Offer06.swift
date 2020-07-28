// 剑指 Offer 06. 从尾到头打印链表
// https://leetcode-cn.com/problems/cong-wei-dao-tou-da-yin-lian-biao-lcof/

// swift中没有栈这个现成的数据结构，所以我认为swift不会出这个面试题
//class Solution {
//    func reversePrint(ListNode head) -> [Int] {
//        var stack = Stack<Integer>();
//        while(head != null) {
//            stack.addLast(head.val);
//            head = head.next;
//        }
//        int[] res = new int[stack.size()];
//        for(int i = 0; i < res.length; i++)
//            res[i] = stack.removeLast();
//        return res;
//    }
//}
