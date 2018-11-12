public class testBdy {
    
    public static void testFunc()
    {
         Date todaydate= Date.today();
        
        My_Team__c [] teamEmail= [ SELECT  Email__c,next_birthday__c from My_Team__c where (next_birthday__c !=:todaydate) ];
        
        
        Integer len= teamEmail.size();
        
        List<String> mail = new List<String> ();
        List<Date>   nbd= new List<Date>();
        
       for(Integer i=0; i<len; i++)
        {
            mail.add(teamEmail[i].Email__c);
            nbd.add(teamEmail[i].next_birthday__c);
            
        }
        
            for(Integer i=0; i<len; i++)
            {
                System.debug(teamEmail[i].Email__c);
                System.debug(teamEmail[i].next_birthday__c);
            }    
    }
}