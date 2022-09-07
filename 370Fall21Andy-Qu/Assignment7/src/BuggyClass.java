
public class BuggyClass {
public static int xii=3;
public static int buggyMethod1(int a, int b) {
		int c = 0;
		if(a>b) {
			try {
			c=a/b;
			c=c+a+b-1;
			}
			catch(Exception e) {
				System.out.println("Division by zero fault");
			}
		}
			return c;
	}

public static int buggyMethod2(int a, int b) {
	int c = 1;
	if(a>b) {
		try {
		return (a/b);
		}
		catch(Exception e) {
			System.out.println("Division by zero fault");
		}
	}
	return c;
}
public static void buggyMethod3(int a, int b) {
		try {
		xii = (a/b);
		}
		catch(Exception e) {
			System.out.println("Division by zero fault");
		}
}
public static void buggyMethod4() {
//	There is no way to achieve 100 branch cover and it does not reveal the fault
//	If there is 100 percent branch coverage then it should reveal the fault since it goes through every return
}
public static void buggyMethod5 (int i) {
	int x;
	if(i>10 && i<1)
	x = i/0;
	xii++;
	}



	public static void main(String[] args) {

	}


	
	
	
}
