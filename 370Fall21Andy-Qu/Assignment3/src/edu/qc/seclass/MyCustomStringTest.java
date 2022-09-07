import org.junit.*;

public class MyCustomStringTest {
	@Test
	public void getString() {
//		test the get string function. Since string is null we should assert null
		MyCustomStringInterface InterF = new MyCustomString();
		String stringy = InterF.getString();
		Assert.assertNull(stringy);
	}
	@Test
	public void setString() {
//		test set string method. Set the string to Hello. then Assert the string with getstring() method
		MyCustomStringInterface InterF = new MyCustomString();
		String stringy = "Hello";
		InterF.setString(stringy);
		Assert.assertEquals(stringy, InterF.getString());
	}
	@Test
	public void countnumbers() {
//		since stringx is still null we expect it to return 0
		MyCustomStringInterface InterF = new MyCustomString();
		int inty = InterF.countNumbers();
		Assert.assertEquals(inty, 0);
//		we set the stringx to be 12345@6789ABCDEF. there should be 2 numbers which is 12345 and 6789
		InterF.setString("12345@6789ABCDEF");
		inty = InterF.countNumbers();
		Assert.assertEquals(inty, 2);
	}
	@Test
	public void getEveryNthCharacterFromBeginningOrEnd() {
//		try and catch the exception because n is less than or equal to 0
		MyCustomStringInterface InterF = new MyCustomString();
		try {
		String stringy = InterF.getEveryNthCharacterFromBeginningOrEnd(0, true);
		
		}
		catch(IllegalArgumentException e){
			String excp = e.getMessage();
			Assert.assertEquals(excp, "\"n\" less than or equal to zero");
		}
//		try and catch the exception because the current string is null but n is greater than 0
		try {
			String stringy = InterF.getEveryNthCharacterFromBeginningOrEnd(1, true);
			
			}
			catch(NullPointerException e){
				String excp = e.getMessage();
				Assert.assertEquals(excp, "current string is null and \"n\" is greater than zero");
				
			}
//		set stringx to 123456789ABCDEF and test with 5 as n and start from end to false
//		test again for the startatend to be true
		InterF.setString("123456789ABCDEF");
		String stringy = InterF.getEveryNthCharacterFromBeginningOrEnd(5, false);
		Assert.assertEquals(stringy, "[5, A, F]");
		stringy = InterF.getEveryNthCharacterFromBeginningOrEnd(5, true);
		Assert.assertEquals(stringy, "[B, 6, 1]");
	}
	@Test
	public void convertDigitsToNamesInSubstring() {
		MyCustomStringInterface InterF = new MyCustomString();
//		test for the startposition to be greater than the endposition
		try {
			InterF.convertDigitsToNamesInSubstring(5, 2);
		}
		catch(IllegalArgumentException e){
			String excp = e.getMessage();
			Assert.assertEquals(excp, "startPosition\" > \"endPosition");
			
		}
//		test to see if exception is thrown if the stringx is null
		try {
			InterF.convertDigitsToNamesInSubstring(1, 2);
		}
		catch(NullPointerException e){
			String excp = e.getMessage();
			Assert.assertEquals(excp, "If \"startPosition\" <= \"endPosition\", \"startPosition\" and \"endPosition\" are greater than 0, and the current string is null");
			
		}
//		test to see if exception is  throw if index are out of bound
		InterF.setString("123456789ABCDEF");
		try {
			InterF.convertDigitsToNamesInSubstring(14, 17);
		}
		catch(MyIndexOutOfBoundsException e){
			String excp = e.getMessage();
			Assert.assertEquals(excp, "If \"startPosition\" <= \"endPosition\", but either \"startPosition\" or \"endPosition\" are out of bounds (i.e., either less than 1 or greater than thelength of the string)");
		}
//		test to see if the method works with the string not being null,index not out of bound, and the startpostion is less than end position
		InterF.convertDigitsToNamesInSubstring(1,3);
		Assert.assertEquals(InterF.getString(), "1TwoThreeFour56789ABCDEF");
	}

}
