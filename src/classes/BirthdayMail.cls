global class BirthdayMail implements Schedulable
{
    String totalNames='';
    
	global void execute (SchedulableContext sc)
    {
        sendBirthdaYAlert();
    }
    
    public void sendBirthdaYAlert()
    {
        Date todaydate= Date.today();
        
       My_Team__c [] teamEmail= [ SELECT  Email__c,Next_birthday__c from My_Team__c where (next_birthday__c !=:todaydate) ];
        
        Integer len= teamEmail.size();
        
        List<String> mail = new List<String>();
        List<Date>   nbd= new List<Date>();
        
        for(Integer i=0; i<len; i++)
        {
            mail.add(teamEmail[i].Email__c);
            nbd.add(teamEmail[i].next_birthday__c);
        }
        
        for(Integer i=0; i<nbd.size(); i++)
        {
          if(nbd[i]==todaydate)
          {
              for(Integer j=0; j<len; j++)
             EmailManager.sendMail(mail[j],getSubject(),getBody()); 
          }
        }
    }
    
    public string getSubject()
    {
        
        Date todaydate= Date.today();
        My_Team__c[] name=[ SELECT  Team_Member_Name__c from My_Team__c where (next_birthday__c =:todaydate) ];
        
        List<String> bdyName= new List<String>();
        
        for(Integer i=0; i<name.size(); i++)
        {
          bdyName.add(name[i].Team_Member_Name__c);  
        }
        //Adding person names having birthday on same date
         for(Integer j=0; j<name.size(); j++)
        {
          totalNames+=bdyName[j]+' ';
        }
        String subject='Today is '+totalNames+' birthday';
        
        return subject;
    }
    
    public String getBody()
    {
        String body='Hi Team, Let\'s get together for '+totalNames+' birthday planning. Thanks Rahul :)';
        
        return body;
    }
}