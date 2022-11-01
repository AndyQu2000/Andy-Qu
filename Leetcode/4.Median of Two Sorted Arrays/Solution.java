class Solution {
    public double findMedianSortedArrays(int[] nums1, int[] nums2) {
        int a = 0;
        int b = 0;
        int c = nums1.length+nums2.length;
        int[] con = new int[c];
        for(int i  = 0; i < c; i++){
            if(a==nums1.length){
                con[i]= nums2[b++];
            }
            else if(b==nums2.length){
                con[i]= nums1[a++];
            }
            else if(nums1[a]>=nums2[b]){
                con[i] = nums2[b];
                b++;
            }
            else{
                con[i] = nums1[a];
                a++;
            }
        }
        double med = 0;
        if(c%2 == 0)med = (con[c/2]+con[(c/2)-1])/2.0;
        else med = con[c/2];
        return med;
    }
}