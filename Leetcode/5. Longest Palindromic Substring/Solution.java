class Solution {
    public boolean isP(String s){
            for(int i = 0; i <s.length();i++){
                if(s.charAt(i)!=s.charAt(s.length()-i-1))return false;
            }
            return true;
        }

    public String longestPalindrome(String s) {
        String pal =  "";
        for(int i = 0; i < s.length()&& s.length()-i >pal.length();i++){
            for(int j = s.length(); j > i; j--){
                // if(isP(s.substring(i,j)) && j-i > pal.length())pal = s.substring(i,j);
                if(isP(s.substring(i,j))){
                    if(j-i > pal.length()) pal = s.substring(i,j);
                    j = 0;
                }
            }
        }
    
        return pal;
    }
}