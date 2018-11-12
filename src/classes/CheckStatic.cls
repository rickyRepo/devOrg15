public class CheckStatic {

   static integer x=10;
    integer y=5;
    integer CheckStatic=6;
    
    public  void CheckStatic()
    {
        x+=10;
        //A static method is only associated with a class, it can't access the instance member variable values of its class
        //System.debug('y= '+y);
        
        System.debug('Class CheckStatic= '+CheckStatic);
        
    }
}