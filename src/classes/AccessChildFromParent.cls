public class AccessChildFromParent {
    
    

    public static void printAccount()
    {
        Account[] acctsWithContacts = [SELECT Name, (SELECT FirstName,LastName FROM Contacts) FROM Account WHERE Name = 'SFDC Computing'];
        
        System.debug(acctsWithContacts);
        System.debug(acctsWithContacts.size());
    }
}