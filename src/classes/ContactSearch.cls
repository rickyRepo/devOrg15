public class ContactSearch {
    
    public static Contact[] searchForContacts(String lastName, String mailingPostalCode){
 
        Contact [] contactData  = [SELECT Name, Email from Contact where ( LastName like '%Ruiz%' or Email like '%ruizcarlo@mailme.com%')];
        
        return contactData;
    }

}