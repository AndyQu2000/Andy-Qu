class Solution {
    public boolean isSubsequence(String s, String t) {
        if(s.length()<1)return true;
        if(t.length()<1)return false;
        String q = "";
        String s1 = s;
        for(int i = 0; i<t.length();i++){
            if(t.charAt(i)==s.charAt(0)){
                q = q+s.charAt(0);
                if(s.length()<=1)break;
                s=s.substring(1);
            }

        }
        if(q.equals(s1))return true;
        else return false;
    }
}