global class TestBirthday implements Schedulable
{
    String totalNames='';
    Date todayBirth;
	  
    global void execute (SchedulableContext sc)
    {
        sendBirthdaYAlert();
    }
    
    
    public void sendBirthdaYAlert()
    {
        Date todaydate= Date.today();
        
        //Getting all mailIDs and NextBdyDate except the person whose bdy is today 
       My_Team__c [] teamEmail= [ SELECT  Email__c,Next_birthday__c from My_Team__c where (next_birthday__c !=:todaydate) ];
        
        //Getting all Names and NextBdyDate of the person whose bdy is today
       My_Team__c [] todayBdy=  [SELECT  Team_Member_Name__c,next_birthday__c from My_Team__c where (next_birthday__c =:todaydate)] ;
        
        Integer len= teamEmail.size();
        
        List<String> mail = new List<String>();
        List<Date>   nbd= new List<Date>();
        
        for(Integer i=0; i<len; i++)
        {
            mail.add(teamEmail[i].Email__c);
            nbd.add(teamEmail[i].next_birthday__c);
        }
        //Storing Mail n NextBirhdayDate in List 
        for(Integer i=0; i<nbd.size(); i++)
        {
            System.debug('Nxt Bdy: '+nbd[i]);
        }
        for(Integer i=0; i<mail.size(); i++)
        {
            System.debug('Mail ID: '+mail[i]);
        }
        
        //Storing Name n NextBirhdayDate in List for person whose birhday is today
        List<String> names =new List<String>();
        List<Date>   tdyBdy= new List<Date>();
        
        Integer len2=todayBdy.size();
        
        for(Integer i=0; i<len2; i++)
        {
            names.add(todayBdy[i].Team_Member_Name__c);
            tdyBdy.add(todayBdy[i].next_birthday__c);
        }
        for(Integer i=0; i<names.size(); i++)
        {
            System.debug('Today Bdy: '+names[i]);
            System.debug('Date Bdy: '+tdyBdy[i]);
            totalNames=totalNames+names[i]+' ';
        }
        todayBirth=tdyBdy[0];
       
          if(todayBirth==todaydate)
          {
              System.debug('Nxt bdy date: '+todayBirth);
              
              for(Integer j=0; j<10; j++)
              {
                  System.debug('Mail id: '+ mail[j]);
                  EmailManager.sendMail(mail[j],getSubject(),getBody());
                  
                 
              }
              totalNames='';
          }
        
    }
    
    public string getSubject()
    {
             
        //Adding person names having birthday on same date
        
        String subject='Today is '+totalNames+' birthday';
         
        return subject;
    }
    
    public String getBody()
    {
        String body='Hi Team, Let\'s get together for '+totalNames+' birthday planning. Thanks Rahul :)';
        
        return body;
    }
}