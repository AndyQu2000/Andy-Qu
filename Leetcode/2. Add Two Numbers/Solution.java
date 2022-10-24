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
    public ListNode addTwoNumbers(ListNode l1, ListNode l2) {
        int n1 = 0;
        ListNode ans = new ListNode();
        ListNode head = new ListNode();
        head.next = ans;

    while(l1 !=null || l2 != null){
        if(l1 != null){
            n1 =n1+l1.val;
            l1 = l1.next;
            }
        if (l2!=null){
            n1=n1+l2.val;
            l2 = l2.next;
            }
        ListNode n = new ListNode(n1%10);
        while(ans.next != null)ans=ans.next;
            ans.next=n;
            n1=n1/10;
            }
    if(n1>0){
        ListNode n = new ListNode(n1%10);
        while(ans.next != null)ans=ans.next;
            ans.next=n;
            n1=n1/10;
    }

    head = head.next;
    if(head.next != null)head = head.next;
    return head;
    }

}