
public class Clock {
	private int hours;
	private int minutes;
	private int seconds;
	private String time;
	
	public Clock(String time) {
		this.time = time;
		parseTime();
	}
	//changes the files and sets it puts it into a line
	public void parseTime() {
		String[] A = time.split("\\:");
		try {
		setHours(Integer.parseInt(A[0]));
		}
		catch(Exception e){
		setHours(0);
		}
		try {
		setMinutes(Integer.parseInt(A[1]));
		}
		catch(Exception e) {
		setMinutes(0);
		}
		try {
		setSeconds(Integer.parseInt(A[2]));
		}
		catch(Exception e) {
		setSeconds(0);
		}
	}
	//Getters and Setters
	void setHours(int a){
		hours = a;
	}
	void setMinutes(int a){
		minutes = a;
	}
	void setSeconds(int a){
		seconds = a;
	}
	
	int getHours() {
		return this.hours;
	}
	int getMinutes() {
		return this.minutes;
	}
	int getSeconds() {
		return this.seconds;
	}
	//converts to string
	@Override
	public String toString() {
		return String.format(getHours() + ":" + getMinutes() + ":" + getSeconds());
	}
	
}
