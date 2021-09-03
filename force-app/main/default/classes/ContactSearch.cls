public class ContactSearch {
	public static List<Contact> searchForContacts(String lastName,String zipCode)
    {
        List<Contact> conList=new List<Contact>();
        Contact[] con=[select Id,Name from Contact where LastName=:lastName and MailingPostalCode =:zipCode];
        for(Contact c:con)
        {
            conList.add(c);
        }
        return conList;
    }
}