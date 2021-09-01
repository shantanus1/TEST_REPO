public with sharing class AccountController {
    public static List<Account> getAllActiveAccounts() {
    
        Account acc=new Account(Name='Test1');
        insert acc;
        System.debug([SELECT Id,Name,Active__c FROM Account WHERE Id=:acc.Id]);
      return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
    }
}