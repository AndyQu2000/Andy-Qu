class Solution {
    public int romanToInt(String s) {
        int ans = 0;
        for(int i = 0; i < s.length(); i++){
            if(s.charAt(i)== 'M'){
                ans = ans+1000;
            }
            else if ((i<s.length()-1)&&s.charAt(i)== 'C' && s.charAt(i+1) == 'M'){
                ans = ans+900;
                i++;
            }
            else if (s.charAt(i)== 'D'){
                ans = ans+500;
            }
            else if ((i<s.length()-1)&&s.charAt(i)== 'C'&& s.charAt(i+1) == 'D'){
                ans = ans+400;
                i++;
            }
            else if (s.charAt(i)== 'C'){
                ans = ans+100;
            }
            else if ((i<s.length()-1)&&s.charAt(i)== 'X'&& s.charAt(i+1) == 'C'){
                ans = ans+90;
                i++;
            }
            else if (s.charAt(i)== 'L'){
                ans = ans+50;
            }
            else if ((i<s.length()-1)&&s.charAt(i)== 'X'&& s.charAt(i+1) == 'L'){
                ans = ans +40;
                i++;
            }
            else if (s.charAt(i)== 'X'){
                ans = ans + 10;
            }
            else if ((i<s.length()-1)&&s.charAt(i)== 'I'&& s.charAt(i+1) == 'X'){
                ans = ans +9;
                i++;
            }
            else if (s.charAt(i)== 'V'){
                ans = ans + 5;
            }
            else if ((i<s.length()-1)&&s.charAt(i)== 'I'&& s.charAt(i+1) == 'V'){
                ans = ans +4;
                i++;
            }
            else if (s.charAt(i)== 'I'){
                ans = ans + 1;
            }

        }
        return ans;
    }
}