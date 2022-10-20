
class Solution {
    public static boolean repeat(char x , String y){
        for(int ii = 0; ii<y.length()-1;ii++){
            if(y.charAt(ii)==x){
                return false;
            }
        }
    return true;
    }
    public static int lengthOfLongestSubstring(String s) {
        int counter = 0;
        int cc = 0;
        String temp = "";
        for (int i = 0;i<s.length();i++){
            temp = temp+s.charAt(i);
            if(repeat(s.charAt(i),temp)){
                cc++;
                if (counter<cc)counter=cc;
            }
            else{
                temp= temp.substring(1,temp.length()-1);
                cc--;
                i--;

            }
        }
        return counter;
    }
    public static void main(String[] args) {
        String input = "dfdg";
        System.out.println(lengthOfLongestSubstring(input));
    }
}