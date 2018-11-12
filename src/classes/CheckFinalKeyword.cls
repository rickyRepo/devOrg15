public class CheckFinalKeyword {
    
    // initializing final variable while declaring a variable
     final integer x;//=10;
    
     // initializing final variable in constructor
   public  CheckFinalKeyword(){
        x=10;
    }
        // initializing final variable in initialization code block
        {
           x=10; 
        }
    public void modifyFinalKeyword(){
        
       
       
        
       System.debug('Final x= '+x);
        
    }

}