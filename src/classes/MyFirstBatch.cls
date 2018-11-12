global class MyFirstBatch implements Database.Batchable<sObject>
{
    global final String Query,Entity,Field,Value;
    
        global MyFirstBatch(){}
   global MyFirstBatch(String q, String e, String f,String v){
        Query=q;
        Entity=e;
        Field=f;
        Value=v;
    }
    
    //implement Start function
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator(Query);
    }
    
    //implement Execute Function
    global void execute(Database.BatchableContext bc,List<sObject> scope){
        
        for(sObject eachRow: scope){
            	eachRow.put(Field,Value);
        }
        
        update scope;
    }
    
    //implement finish function
    global void finish(Database.BatchableContext bc){
        System.debug('Batch Executed');
    }
}