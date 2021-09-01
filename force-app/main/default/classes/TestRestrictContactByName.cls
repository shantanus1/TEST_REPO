@isTest
public class TestRestrictContactByName {

    @isTest static void TestRestrictContactInsert()
    {
        Contact con=new Contact(LastName='INVALIDNAME');
        //List<Contact> conList=new List<Contact>{con};
        //insert con;
        Test.startTest();
        Database.SaveResult result=Database.insert(con,false);
        Test.stopTest();
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', result.getErrors()[0].getMessage());
    }
}