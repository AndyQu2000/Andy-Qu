class Solution {
    public static String convert(String s, int numRows) {
        int index = 0;
        int col = 0;
        char[][] sort = new char[numRows][s.length()];
        while(index<s.length()){
            for(int i = 0; i <numRows;i++){
                sort[i][col] = s.charAt(index++);
                if(index>=s.length())break;
            }
            if(index>=s.length())break;
            col++;
            for(int i = numRows-2;i>=1;i--){
                if(index>=s.length())break;
                sort[i][col] = s.charAt(index++);
                if(index>=s.length())break;
                col++;
            }
        }
        String answer = "";
        for(int i = 0; i<numRows; i++){
            for(int j = 0; j <s.length(); j++){
                if(sort[i][j] != 0)answer = answer+ sort[i][j];
            }

        }
        return answer;

    }
}