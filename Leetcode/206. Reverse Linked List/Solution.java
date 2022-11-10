/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
    public ListNode reverseList(ListNode head) {
        if(head == null)return head;
        ListNode ans = new ListNode();
        ListNode ans1 = new ListNode();
        ans1= ans;
        Stack<Integer> stack1 = new Stack<Integer>();
        while(head != null){
            stack1.push(head.val);
            head=head.next;
        }
        while(stack1.empty() != true){
            ListNode n = new ListNode(stack1.pop());
            while(ans.next != null)ans=ans.next;
            ans.next=n;
        }
        return ans1.next;
    }
}