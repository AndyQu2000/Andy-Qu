class Solution {
    public int myAtoi(String s) {
        if(s == null||s.equals(""))return 0;
        long ans = 0;
        boolean isneg = false;
        boolean started = false;
        while(s.charAt(0)== ' '&&s.length()>2){
            s= s.substring(1);
        }
        for(int i = 0;i < s.length();i++){
            if (ans>0 && Character.isDigit(s.charAt(i)) == false){
                if(isneg==true)return (int)ans*-1;
                else return (int)ans;
                
            }
            if(s.charAt(i)== ' ')return 0;
            if(Character.isDigit(s.charAt(i)) == true){
                if(started == false){
                    started = true;
                    if(i>0 && Character.isLetter(s.charAt(i-1)))return 0;
                    if(i>0&&s.charAt(i-1)== '-')isneg = true;
                    if(i>0&&s.charAt(i-1)== '.')return 0;
                    if(i>1&&s.charAt(i-2) == '+'||i>1&&s.charAt(i-2) == '-')return 0;
                }

                ans = (ans*10) + (s.charAt(i)-48);
                if(ans>2147483647&& isneg==true)return -2147483648;
                if(ans> 2147483647)return 2147483647;
            }
            if(started == true && Character.isDigit(s.charAt(i)) == false)return (int)ans;

        }
        if(isneg==true)return (int)ans*-1;
        else return (int)ans;
    }
}
