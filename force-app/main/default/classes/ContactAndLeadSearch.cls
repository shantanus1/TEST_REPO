public class ContactAndLeadSearch {

    public static List<List< SObject>> searchContactsAndLeads(String name)
    {
        List<List<sObject>> records = [FIND :name IN NAME FIELDS RETURNING Contact(LastName),Lead(LastName,Company)];
        Contact[] conList=(Contact[])records[0];
        Lead[] leadList=(Lead[])records[1];
        for(Contact con:conList)
        {
            System.debug('Contact Name :'+con.LastName);
        }
        for(Lead l:leadList)
        {
            System.debug('Lead Name : '+l.LastName);
        }
        return records;
    }
}