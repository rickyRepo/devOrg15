public class Shadowing {

    Integer length=1;
    Integer area;
    
 public static Integer getLength()
    {
        Integer length=3;
        
          return length;      
    }
    
     public static void printArea()  
     {
         Integer area = Shadowing.getLength() * Shadowing.getLength();
         
         System.debug('Area of Square: '+area);
     } 
    
}