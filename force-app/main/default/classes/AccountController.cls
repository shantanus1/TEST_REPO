public with sharing class AccountController {
    public static List<Account> getAllActiveAccounts() {
    
        Account acc=new Account(Name='Shantanu');
        insert acc;
        System.debug([SELECT Id,Name,Phone FROM Account WHERE Id=:acc.Id]);
      return [SELECT Id,Name,Phone FROM Account WHERE Id=:acc.Id];
    }
}
