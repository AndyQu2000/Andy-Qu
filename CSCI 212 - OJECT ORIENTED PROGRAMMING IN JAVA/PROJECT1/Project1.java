import java.io.File;
import java.io.FileNotFoundException;
import java.util.*;

public class Project1 {
	public static void main(String[] args) throws FileNotFoundException {
		//imports the file
		File file = new File("C:\\Users\\Jefferson\\eclipse-workspace\\Project1\\src\\input.txt");
		Scanner scan = new Scanner(file);
		// create a class to store all the clock times
		Clock[] dataA = new Clock[16];
		Clock[] dataB = new Clock[16];
		int counter = 0;
		while(scan.hasNextLine()) {
			dataA[counter] = new Clock(scan.nextLine());
			dataB[counter] = dataA[counter];
			counter++;
		}
		// selection sorting for hours
		for(int i = 0; i<dataA.length;i++) {
			Clock h = dataB[i];
			int temp=0;
			Clock rep;
			for(int j=i;j<dataA.length;j++) {
				if(h.getHours()>=dataB[j].getHours()) {
					h = dataB[j];
					temp = j;
				}
			}
			rep = dataB[i];
			dataB[i] = h;
			dataB[temp] = rep;
		}
		//selection sorting for minutes
		for(int i = 0; i<dataA.length;i++) {
			Clock h = dataB[i];
			int temp=0;
			Clock rep;
			for(int j=i;j<dataA.length;j++) {
				if(h.getHours() == dataB[j].getHours() && h.getMinutes()>=dataB[j].getMinutes()) {
					h = dataB[j];
					temp = j;
				}
			}
			rep = dataB[i];
			dataB[i] = h;
			dataB[temp] = rep;
		}
		//selection sorting for seconds
		for(int i = 0; i<dataA.length;i++) {
			Clock h = dataB[i];
			int temp=0;
			Clock rep;
			for(int j=i;j<dataA.length;j++) {
				if(h.getHours() == dataB[j].getHours() && (h.getMinutes() == dataB[j].getMinutes())&& h.getSeconds()>=dataB[j].getSeconds()) {
					h = dataB[j];
					temp = j;
				}
			}
			rep = dataB[i];
			dataB[i] = h;
			dataB[temp] = rep;
		}
		//calls the clock's gui
	ClockGUI gui = new ClockGUI(dataA,dataB);
	scan.close();
	}
}
