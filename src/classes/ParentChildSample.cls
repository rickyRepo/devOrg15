public class ParentChildSample {
    
    public static void insertParentChild(){
        
        Date closeDate= Date.today();
             closeDate.addDays(7);
        //Creating child object
        Opportunity opp =new Opportunity(Name='OppWithAcctInsert',StageName='Prospecting', CloseDate=closeDate);
        
        //Creating reference to account with external
        Account act=new Account(MyExtId__c='SAP111113');
        
        //Using reference to connect Parent with child
        opp.Account=act; 
        //Creating parent object
        Account acct= new Account(Name='Rahul_Comp',MyExtId__c='SAP111113');
        
        // creating aaray of sObject to insert
        sObject[] arObj = new sObject[]{acct,opp}; 
            
        // inserting parent and child at a time
        Database.SaveResult[] results= Database.insert(arObj);
        
        //Check results
        for(Integer i=0; i<results.size(); i++){
            if(results[i].isSuccess()){
               System.debug('Successfully created ID: '+results[i].getID()); 
            }
            else{
                System.debug('Error: could not create sobject '+ 'for array element ' + i + '.');
				System.debug(' The error reported was: '+ results[i].getErrors()[0].getMessage() + '\n');
            }
        }
    }

}