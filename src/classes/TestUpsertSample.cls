@isTest
public class TestUpsertSample {

    //method containig testMethod must be static
    public static testMethod void  testUpsertLead(){
        
        List<Lead> leads = new List<Lead>();
        
        for(Integer i=0; i<100; i++){
            
            leads.add(new Lead(lastName='testLead', Company='testCompany'));         
        }
        
        Test.startTest();
           List<Database.UpsertResult> rslt = UpsertSample.upsertLead(leads);
        Test.stopTest();
        
        System.debug('result size: '+rslt.size());
        
        Set<ID> ids = new Set<ID>();
        for(Database.UpsertResult result: rslt ){
            
            System.assert(result.isSuccess());
            ids.add(result.getID());
        }
        
        List<Lead> leadData= [SELECT Id, (SELECT subject FROM Tasks) from Lead WHERE Id in :ids];
        
        for(Lead lid: leadData){
            
            System.assertEquals(1,lid.tasks.size());
        }
    }
}