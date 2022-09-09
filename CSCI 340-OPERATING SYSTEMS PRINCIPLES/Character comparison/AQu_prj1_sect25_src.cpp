// Andy Qu
// Linkage Commands:
// g++ AQu_prj1_sect25_src.cpp
// ./a prj1inp1.txt
// ./a prj1inp2.txt
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <fcntl.h>
#include <unistd.h>
using namespace std;
// converter to change int to ascii in order to print
int converter(int n){
    return '0'+n;
}
// reverses the int(example: 321 becomes 123)
int reverse(int num){ 
    int rev_num = 0; 
    // divide multiply rev_num by 10 to add the mod of num
    // then we can remove the last digit of num by dividing by 10
    while (num > 0) 
    { 
        rev_num = rev_num*10 + num%10; 
        num = num/10; 
    } 
    return rev_num; 
} 


int main(int argc, char *argv[]){
    // a index for the differences
    int diff = 0;
    int input = open(argv[1],O_RDONLY);
    if(input == -1)exit(1);
    int fd = open("AQu_prj1_sect25_out.txt",O_CREAT|O_WRONLY,0600);
    if(fd==-1)exit(1);
    // array of char for the buffer
    char buf1[0];
    // Counter is used as an index for the beginning
    // size is used for the index of the end
    int counter = 0;
    int size = lseek(input,(off_t) 0,SEEK_END);
    int size2=size;//The size  of the file used for looping
    for(int i =0; i<size2;i++){
        // letting lseek to point to then end index
        // but each time it repeats, we subtract one to index
        // so it read backwards
        lseek(input,(off_t) --size,SEEK_SET);
        read(input,buf1,1);
        char temp1 = buf1[0];
        // letting lseek to point to then beginning index
        // but each time it repeats, we add one to index
        // so it reads forwards
        lseek(input,(off_t)counter++, SEEK_SET);
        read(input,buf1,1);
        char temp2 = buf1[0];
        // compare the char of beginning index and end index
        // if they are the same we print out 0 if they are no we print out 1
        if(temp1==temp2)write(fd,"0",1);
        else{
            write(fd,"1",1);
        }
    }
    write(fd,"\n\n",2);
    // resetting the index for end to the end 
    // resetting the index for the beginning to the beginning
    size = size2;
    counter = 0;
    for(int i =0; i<size2;i++){
        // repeat the procedure
        lseek(input,(off_t) --size,SEEK_SET);
        read(input,buf1,1);
        char temp1 = buf1[0];
        lseek(input,(off_t)counter++, SEEK_SET);
        read(input,buf1,1);
        char temp2 = buf1[0];
        // if the chars dont match we add one to the diff
        if(!(temp1==temp2)){
            diff++;
            // to print the index we have to convert it in to ascii
            // we first remove all the zeros from the back
            int rev = i+1;
            int zeros=0;
            while ((rev%10) == 0){
                rev=rev/10;
                zeros++;
            }
            // pass the index through a reverse function and the converter function
            // the we print out the index 
            if (rev>9) rev = reverse(rev);
            while(rev>=1){
                int cc = converter(rev%10);
                write(fd,&cc,1);
                rev=rev/10;
            }
// since we removed the zeros we have to add it back
// after printing the index we can go ahead and print out the characters that were different
            for(int i = 0; i<zeros;i++)write(fd,"0",1);
            write(fd, " ", 1);
            write(fd, &temp1, 1);
            write(fd, " ", 1);
            write(fd, &temp2,1);
            write(fd,"\n",1);


        }
    }

if(diff>=1){
    // if there are character postions that differ, we print out the amount of positions differs
    int zero = 0;
    write(fd, "\nTotal:",7);
    // to print the numbers we have to reverse the numbers and put it through the converter funtion
    // we first remove all the zeros at the end
    while ((diff%10) == 0){
        diff=diff/10;
        zero++;
    }
    // Putting the diff into a reverse and converter to print out the values the add the zeros back in the end
    if (diff>9) diff = reverse(diff);
    while(diff>=1){
        int cc = converter(diff%10);
        write(fd,&cc,1);
        diff=diff/10;
    }
    write(fd," character positions differ.",28);
        close(input);
        close(fd);
}
// if there are no differences, instead of printing 0 character differences
// we print there are no character positions differences
else write(fd,"Total: There are no character positions differ",46);

    return 0;
}