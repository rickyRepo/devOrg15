@isTest
public class TestStateBatch 
{	
    @isTest
    public static void testMethod123()
    {
		String query='SELECT Id, Name, Capacity__c FROM Festival__c';
        String field='Capacity__c';
    
        Test.startTest();
              Database.executeBatch(new StateBatch(query,field));
        Test.stopTest();

		 StateBatch obj = new StateBatch();
    long sum=obj.returnTotal();
    System.assertEquals(0, sum);       
    }
    
}