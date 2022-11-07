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
    public ListNode mergeTwoLists(ListNode list1, ListNode list2) {
        if(list1 == null)return list2;
        if(list2 == null)return list1;
        
        ListNode head = new ListNode();
        ListNode start = new ListNode();
        head.next = start;
        start.next = list1;
        while(start != null){
            if(list2!=null && start.next!=null && start.next.val>list2.val){
                ListNode n = new ListNode(list2.val);
                n.next = start.next;
                start.next = n;
                list2=list2.next;
            }
            if(start.next == null){
                start.next = list2;
                break;
            }
            start = start.next;
            
        }
        return head.next.next;
    }
}