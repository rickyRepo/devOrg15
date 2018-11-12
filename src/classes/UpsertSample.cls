public class UpsertSample {
    
    public static List<Database.UpsertResult> upsertLead(List<Lead> lid){
        
        List<Database.UpsertResult> upsertResult= Database.upsert(lid,false);
        
        /* This is the list for new tasks that will be inserted when new leads are created. */
        
        List<Task> tasks = new List<Task>();
        
        for(Database.UpsertResult rslt :upsertResult){
            
            if(rslt.isSuccess() && rslt.isCreated()){
                
                tasks.add(new Task(Subject = 'Follow-up', WhoId = rslt.getId()));
            }
        }
        Database.insert(tasks);
        return upsertResult;
    }
}