public with sharing class AccountController {
    public static List<Account> getAllActiveAccounts() {
	
		System.debug([SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes']);
      return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
    }
}