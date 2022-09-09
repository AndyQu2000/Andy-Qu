//    Andy Qu
//    g++AQu_prj3_sect25_src.cpp
//    ./a prj2in1.txt
//    ./a prj2in2.txt
// libaries for pread write mutex and threads
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <fcntl.h>
#include <unistd.h>
#include <pthread.h>
#include <mutex>
using namespace std;
//sets the max for the stack to be 100
#define MAX 100

// converter to change int to ascii in order to print
int converter(int n){
    return '0'+n;
}
// reverses the int(example: 321 becomes 123)
int reverse(int num){
    int rev_num = 0;
    // divide multiply rev_num by 10 to add the mod of num
    // then we can remove the last digit of num by dividing by 10
    while (num > 0){
        rev_num = rev_num*10 + num%10;
        num = num/10;
    }
    return rev_num;
}

class Stack {
    int top;
 
public:
    int a[MAX];
 
    Stack() { top = -1; }
    bool push(int x);
    int pop();
    int peek();
    bool isEmpty();
};
 //push function to add the value to the top of the stack
bool Stack::push(int x)
{
    if (top >= (MAX - 1)) {
        return false;
    }
    else {
        a[++top] = x;
        return true;
    }
}
//  pop function to delete the top of the funciton
int Stack::pop()
{
    if (top < 0) {
        return 0;
    }
    else {
        int x = a[top--];
        return x;
    }
}
//Peek function to return the top value but also not deleteing it.
int Stack::peek()
{
    if (top < 0) {
        return 0;
    }
    else {
        int x = a[top];
        return x;
    }
}
 // is empty function that returns true if the top of the stack is equal to zero
bool Stack::isEmpty()
{
    return (top < 0);
}


// ints for the input file and output
int input,output;
//offt saves the value of the offsets at every 1000th spot
int offt[11];
//cc is used as an index when calculating off t. it is used for the lines
int cc=1;
//this stores the global min. we set it as 99999 because we want the first number to replace it
int gmin=99999;
class Stack s1;
// offset is used for the offset of the file when using the call pread.
int offset = 0;
// mutex for to lock when using a thread
pthread_mutex_t mutex1;
// line resets every 100. it is used to reset the stack.
// line 2 keeps track of what line we are reading all the way to the end
int line = 0;
int line2= 0;
// this is the function that computes the global min of the stack
void computemin(){
    // while it is not empty get the top and compare it to the gmin
    // if it is smaller, we replace it and then remove the top
    while(!(s1.isEmpty())){
        if(s1.peek()<gmin){
            gmin=s1.peek();
            s1.pop();
        }
        // if it is not a new min we encountered we just get rid of it and pop it
        else {
            s1.pop();
        }  
    }
    // here is where we print it out to the console
    // we only print out of every 1000 so to find that out we take the line and mod it by 1000
    // if we get 0 we know its either 1000,2000,3000, etc.
    if(line2%1000==0){
        printf("Minimum integer after ");
        printf("%d",line2);
        printf(" = ");
        printf("%d",gmin);
        printf("\n");
        write(output,"Minimum integer after ",22);
        int tempnum = reverse(line2);
        // here is where we print it to the txt document using the write to make an output
        while (tempnum>=1){
            int cc = converter(tempnum%10);
            write(output,&cc,1);
            tempnum=tempnum/10;
        }
        write(output,"000 = ",6);
        
        int tempnum1 = reverse(gmin);
        if (gmin==0)write(output,"0",1);
        while (tempnum1>=1){
            int cc = converter(tempnum1%10);
            write(output,&cc,1);
            tempnum1=tempnum1/10;
        }
        write(output,"\n",1);
    }
}
// stk function puts the function to a stack
void* stk(void * arg){
    // we use the offt to tell us the index of the 10000th location
    // and area to stop
    while(offset<offt[10]-1){
        // here we lcok the mutex so we can focus on adding the numbers into the stack
        // without interruption 
        pthread_mutex_lock(&mutex1);
        while(line<100){
        int temp=0;
        // each charater is read and put into a temp
        // as we move from character to character we add to the offset
        for(int j = 0; j <6;j++){
            char buf1[1];
            pread(input,buf1,1,offset);
            if(buf1[0]=='\n'){
                offset=offset+1;
                j=j+6;
            }
            else{
                temp=(temp*10)+(buf1[0]-48);
                offset++;
            }
        }

        line++;
        line2++;
        s1.push(temp);
        // since we are done wtih the sttack we unlock the mutex
        pthread_mutex_unlock(&mutex1);
        }
        line=0;
        // run the function to compute the min that we stored in the stack
        computemin();
    }
    }
// this function computes the offsets for every chunk.
// it adds 2 to the offset and saves it every time a /n is detected
void computeOffsets(){
    int offset1 = 0;
    // 3 for loops are created becuase we want to go through each character and every line until we hit 10000
    for(int s = 1; s<=10;s++){
        for (int i =0;i<1000;i++){
            for(int j = 0; j <6;j++){
                char buf1[1];
                pread(input,buf1,1,offset1);
                if(buf1[0]=='\n'){
                    offset1=offset1+2;
                    j=j+6;
                }
                // even if there isnt an \n we still add to the offset
                else{
                    offset1++;
                }
            }
        }
        offt[s]=offset1;
    }
}
main(int argc, char *argv[]){
    // takes the input and assigns it as the argument passed through the terminal
    input = open(argv[1],O_RDONLY);
    if(input == -1)exit(1);
    output= open("AQu_prj3_sect25_rslt.txt",O_CREAT|O_WRONLY,0600);
    
    
    //compute the offsets so we know where it starts and ends.
    computeOffsets();
    pthread_mutex_init(&mutex1, NULL);
    pthread_t newthread[2];
    pthread_create(&newthread[0],NULL, &stk,NULL);
    pthread_join(newthread[0],NULL);

    pthread_mutex_destroy(&mutex1);
    pthread_exit(NULL);
    return 0;
}

