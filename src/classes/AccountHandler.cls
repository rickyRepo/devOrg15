public class AccountHandler {
     public static Account insertNewAccount(String actName)
     {
         try{
             Account act = new Account(Name=actName);
             insert act;
             return act;
         }
         catch(DmlException e){
             System.debug(e);
             return null;
         }
     }
}