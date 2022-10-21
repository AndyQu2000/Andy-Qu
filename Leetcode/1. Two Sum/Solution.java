public class Solution
{
    public static int[] twoSum(int[] nums, int target) {
        int[] output = {0,0};
        for (int i =0; i<=nums.length-1;i++){
            for(int ii = i+1; ii<=nums.length-1;ii++){
                if(nums[i]+nums[ii]==target){
                output[0] = i;
                output[1] = ii;
                return output;
                }
            }

        }
    return output;
    }
    
	public static void main(String[] args) {
	    int[] input = {3,6,3};
	    int [] sums = twoSum(input,6);
		System.out.println(sums[0]);
		System.out.println(sums[1]);
	}
}
