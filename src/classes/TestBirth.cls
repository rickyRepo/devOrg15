public class TestBirth{
    public static void Printmail()
    {
        Date todaydate= Date.today();
        
       My_Team__c [] teamEmail= [ SELECT  Email__c,next_birthday__c from My_Team__c where (next_birthday__c !=:todaydate) ];
        
        //System.debug(teamEmail[0].Email__c);
        System.debug(teamEmail[0].next_birthday__c);
        
       Integer len= teamEmail.size();
        
        List<String> mail = new List<String> ();
        
       for(Integer i=0; i<len; i++)
        {
            mail.add(teamEmail[i].Email__c);
            
            
        }
            //EmailManager.sendMail('rahulsingh26@deloitte.com','test subject','test body');
            System.debug(mail[12]);
        
    }
}