public class BirthdayController 
{
     My_Team__c team = new My_Team__c();
    
	public BirthdayController() 
    {
        team = [SELECT Id, Name, Birthday__c, Next_Birthday__c, Team_Member_Name__c,Gender__c FROM My_Team__c  where Next_Birthday__c >= today order by Next_Birthday__c asc limit 1];
    }

    public String getBirthDate()
    {
        String[] month = new String[]{'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul','Aug', 'Sep', 'Oct', 'Nov', 'Dec'};
        
        Date d = team.Next_Birthday__c ;
        String dt = DateTime.newInstance(d.year(), d.month(), d.day()).format('dd-MM-YYYY');
        String[] arrDate = dt.split('\\-');
        
        Integer ind = Integer.valueof(arrDate[1].trim());
        String mon = month[ind-1];
        
 		return mon+' '+arrDate[0]+', '+arrDate[2];
    }
    
    public String getPerson(){
        return team.Team_Member_Name__c;
    }
    
    public String getName(){
        return team.Name;
    }
    public String getGender(){
        return team.Gender__c;
    }
    
    public String getMessage(){
        
        Date todaydate= Date.today();
        
        if(team.Next_Birthday__c == todaydate)
            return 'True';
        else
            return 'False';
    }

   
}