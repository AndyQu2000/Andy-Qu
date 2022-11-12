class Solution {
    public int reverse(int x) {
        if(x>2147483647 || x<-2147483647)return 0;
        long y = 0;
        boolean neg = false;
        if(x<0){
            neg = true;
            x = x*-1;
        }
        while(x>0){
            y = (y*10)+(x%10);
            x=x/10;
            if(y>2147483647 || y<-2147483647)return 0;
        }
        if (neg==true)y=y*-1;
        return (int)y;
    }
}