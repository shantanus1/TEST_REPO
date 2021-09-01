@isTest
public class TestVerifyDate {
	@isTest static void testCheckDate2()
    {
        Date date1=Date.parse('07/01/2021');
        Date date2=Date.parse('07/19/2021');
        Date newD=VerifyDate.CheckDates(date1,date2);
        System.assertEquals(date2,newD);
    }
    @isTest static void testCheckSetEnd()
    {
        Date date11=Date.parse('07/19/2021');
        Date date21=Date.parse('07/01/2021');
        Date setNew=VerifyDate.CheckDates(date11,date21);
        System.assertEquals(date21,setNew);
    }
}