class Solution {
    public boolean isIsomorphic(String s, String t) {
        HashMap<Character,Character> hash = new HashMap<Character,Character>();
        HashMap<Character,Character> hash1 = new HashMap<Character,Character>();
        for(int i = 0;i<s.length();i++){
            if(hash.containsValue(t.charAt(i))&&hash1.get(t.charAt(i))!=s.charAt(i))return false;
            hash.put(s.charAt(i),t.charAt(i));
            hash1.put(t.charAt(i),s.charAt(i));
        }
        String q = "";
         for(int i = 0;i<s.length();i++){
            q = q + hash.get(s.charAt(i));
        }
        if(q.equals(t))return true;
        else return false;
    }
}