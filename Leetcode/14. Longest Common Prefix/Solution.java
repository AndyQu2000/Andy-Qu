class Solution {
    public String longestCommonPrefix(String[] strs) {
        String ans = "";
        int minlen = 999;
        for(int i = 0; i < strs.length;i++){
            if(strs[i].length()< minlen)minlen = strs[i].length();
        }
        for(int i = 0; i < minlen;i++){
            char temp =' ';
            for(int j = 0; j < strs.length;j++){
                if(j==0)temp = strs[j].charAt(i);
                else if(temp!=strs[j].charAt(i))return ans;
            }
            ans = ans+temp;
        }

        return ans;
    }
}