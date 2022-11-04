class Solution {
    boolean findPiv(int[] x, int piv){
        int a= 0;
        int b = 0;
        for(int i = 0; i < piv;i++)
            a =a+x[i];
        for(int i = piv+1; i<x.length;i++)
        b=b+x[i];
        if(a==b)return true;
        return false;
    }
    public int pivotIndex(int[] nums) {
        for(int i = 0; i <nums.length;i++){
            if(findPiv(nums,i)==true)return i;
        }
        return -1;
        
    }
}