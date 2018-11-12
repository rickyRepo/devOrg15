public class ContactAndLeadSearch {
    
    public static List<List<sObject>> searchContactsAndLeads(String toSearch) {
        
        List<List<sObject>> searchList= [FIND :toSearch IN ALL FIELDS RETURNING Lead(Name), Contact(Name)];
        
        return searchList;
    }

}