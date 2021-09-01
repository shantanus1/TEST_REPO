public with sharing class RandomContactFactory {
   	public static List<Contact> generateRandomContacts(Integer numConts,String lastName)
    {
        List<Contact> contsList=new List<Contact>();
        for(Integer i=0;i<numConts;i++)
        {
            Contact con=new Contact(FirstName='Test'+i,LastName=lastName);
           	contsList.add(con);
        }
        return contsList;
    }
}