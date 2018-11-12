//This batch will add any numeric field and give total result
global class StateBatch implements Database.Batchable<sObject>, Database.Stateful
{
   global String query,field;
   global  Long total=0;
    
     global StateBatch(){}
	global StateBatch(String q, String f)
    {
        query=q;
        field=f;
    }
    global long returnTotal()
    {
        return total;
    }
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<sObject> scope)
    {
        for(sObject eachRowData : scope)
        {
            total+=Long.valueOf(eachRowData.get(field)+'');
        }
    }
    
    global void finish(Database.BatchableContext BC)
    {
        System.debug('Total= '+total);
       
    }
}