import java.util.Arrays;
import java.util.Hashtable;

public class MyCustomString implements MyCustomStringInterface {
	String stringx = null;
	
	public static void main (String[] args) {
		
		
		
	}
	@Override
	public String getString() {
		if(stringx == null)return null;
		else return stringx;
	}

	@Override
	public void setString(String string) {
		this.stringx = string;
	}

	@Override
	public int countNumbers() {
		if(stringx ==""||stringx==null)return 0;
		int AmtOfNums = 0;
//		create a for loop to go through each of the character in the string
//		if the character is a number then we increase the var AmtOfNums by 1 and increment the index until the next character is not a digit
		for(int i =0; i< stringx.length();i++) {
			if(Character.isDigit(stringx.charAt(i))) {
				AmtOfNums++;
				while(Character.isDigit(stringx.charAt(i+1))) {
					i++;
				}
			}
			
		}
//		returns the AmtOfNums because it is the counter for the amount of numbers
		 return AmtOfNums;
	}
	@Override
	public String getEveryNthCharacterFromBeginningOrEnd(int n, boolean startFromEnd) {
//		exceptions to be thrown if string is null or n is less than 0
		if(stringx==null&&n>0)throw new NullPointerException("current string is null and \"n\" is greater than zero");
		if(n<=0)throw new IllegalArgumentException("\"n\" less than or equal to zero");
//		Change every character into an array so  we can use it as an index for choosing ever n,2n,3n, etc. of the string
		if(n>stringx.length())return "";
		char[] toCharArray = new char[stringx.length()];
		char[] nthchars= new char[stringx.length()/n];
		int nthchari = 0;
		for(int i = 0;i<stringx.length();i++) {
			toCharArray[i]= stringx.charAt(i);
		}
		if (startFromEnd==false){
			for(int i = n-1; i<stringx.length();i=i+n) {
				nthchars[nthchari++]=toCharArray[i];
				}
		}
//		if start from end is true we flip the index to work backwards
		else {
			for(int i = stringx.length()-n; i>=0;i=i-n) {
				nthchars[nthchari++]=toCharArray[i];
				}
			
		}
		return Arrays.toString(nthchars);
	}

	@Override
	public void convertDigitsToNamesInSubstring(int startPosition, int endPosition) {
//		For this method to work start position must be greater than endposition
//		, string cannot be null
//		, and the index cannot be out of bound
		if(startPosition > endPosition) throw new IllegalArgumentException("startPosition\" > \"endPosition");
		if(startPosition <= endPosition &&startPosition>0&&endPosition>0 &&stringx == null)throw new NullPointerException("If \"startPosition\" <= \"endPosition\", \"startPosition\" and \"endPosition\" are greater than 0, and the current string is null");
		if(startPosition <= endPosition&&(startPosition<0||endPosition>stringx.length()))throw new  MyIndexOutOfBoundsException("If \"startPosition\" <= \"endPosition\", but either \"startPosition\" or \"endPosition\" are out of bounds (i.e., either less than 1 or greater than thelength of the string)");
//		hash for each digit so we can convert them into words
		Hashtable<Character, String>
        num = new Hashtable<Character, String>();
		num.put('1',"One");
		num.put('2',"Two");
		num.put('3',"Three");
		num.put('4',"Four");
		num.put('5',"Five");
		num.put('6',"Six");
		num.put('7',"Seven");
		num.put('8',"Eight");
		num.put('9',"Nine");
		int index = endPosition;
//		work backwards in the string so we do not need to add to the index every time we change the numbers to words
//		replace the end position one by one by changing the index by 1.
		while(index>=startPosition) {
			if(Character.isDigit(stringx.charAt(index))) {
				stringx = stringx.substring(0,index) + num.get(stringx.charAt(index)) + stringx.substring(index+1);
			}
			index--;
		}
	}
	

}
