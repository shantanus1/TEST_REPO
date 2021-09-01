public class AccountHandler {
	public static Account insertNewAccount(String name)
    {
        Account acc=new Account();
        Account record;
        try
        {
            if(name != null)
            {
             	acc.Name = name;
                insert acc;
                record = [select id,Name from Account where Id = :acc.Id];
                return record;
            }
            else
            {
             	insert acc;   
            }
        }
        catch(DMLException dmlex)
        {
            System.debug('There is DML exception'+dmlex.getMessage());
            return null;
        }
        catch(Exception ex)
        {
            System.debug('Exception : '+ex.getMessage());
        }
        return null;
    }
}