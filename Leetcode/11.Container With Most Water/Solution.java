class Solution {
    public int maxArea(int[] height) {
        int ans = 0;
        int ptr1 = 0;
        int ptr2 = height.length-1;
        while(ptr1!=ptr2){
            int temp = 0;
            if(height[ptr1]<height[ptr2]){
                temp = (ptr2-ptr1)*height[ptr1++];
            }
            else{
                temp =(ptr2-ptr1)*height[ptr2--];
            }
            if(ans<temp)ans = temp;
        }
        return ans;
    }
}