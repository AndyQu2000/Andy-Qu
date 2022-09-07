import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

public class BuggyClassTest {
	private BuggyClass bugmethod1;
//	@BeforeClass
//	public static void setUpBeforeClass() throws Exception {
//	}
//
//	@AfterClass
//	public static void tearDownAfterClass() throws Exception {
//	}

	@Test
	public void BuggyClassTestSC1a() {
		Assert.assertEquals(4,bugmethod1.buggyMethod1(2,1));

	}
	@Test
	public void BuggyClassTestSC1b() {
		Assert.assertEquals(0,bugmethod1.buggyMethod1(2,0));
	}
	
	
	@Test
	public void BuggyClassTestSC2() {
		Assert.assertEquals(4,bugmethod1.buggyMethod2(4,1));
	}
	@Test
	public void BuggyClassTestBC2() {
		Assert.assertEquals(1,bugmethod1.buggyMethod2(2,0));
	}
	@Test
	public void BuggyClassTestBC3() {
		bugmethod1.buggyMethod3(bugmethod1.xii,1);
		Assert.assertEquals(4,bugmethod1.xii);
		
	}
	@Test
	public void BuggyClassTestSC3() {

		int x = bugmethod1.xii;
		bugmethod1.buggyMethod3(bugmethod1.xii,0);
		Assert.assertEquals(4,x);
		
	}
	@Test
	public void BuggyClassTestSC5() {
		bugmethod1.buggyMethod5(bugmethod1.xii);
		Assert.assertEquals(4,bugmethod1.xii);

	}
	

}
