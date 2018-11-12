public class CheckIterableClass {
    
    public static void printContacts()
    {
        IterableClass ic= new IterableClass();
        
        Iterator<object>  ci= ic.iterator();
        
        while(ci.hasNext())
        {
            System.debug(ci.next());
        }
    }
}