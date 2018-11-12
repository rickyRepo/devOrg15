// implementing iterable interface

public class contactIterator implements Iterator<object>{
    
    List<object> conts;
    integer i;
    
    public contactIterator(){
         conts= [SELECT id,firstName,lastname,accountid from contact];
         i=0;
    }
    
  public  boolean hasNext()
    {
     	if(i >= 8)
            return false;
        else
            return true;
    }
  
    public object next(){
        
        if(i==8){
            return null;
        }
        else{
            i++;
            return conts[i-1];
        }
    }  
}