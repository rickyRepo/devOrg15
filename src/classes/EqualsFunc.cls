public class EqualsFunc {
    	
    	public Integer x,y;
    
        public EqualsFunc(Integer a, Integer b)
        {
            x=a;
            y=b;
        }
    
    public Boolean equals(object obj)
      {
            if(obj instanceOf EqualsFunc)
            {
                 EqualsFunc ef= (EqualsFunc) obj;
               
                 /*   System.debug('x= '+this.x);   
                    System.debug('y= '+this.y);  
                    System.debug('ef.x= '+ef.x); 
                    System.debug('ef.y= '+ef.y); */
                
                if((this.x==ef.x)  && (this.y== ef.y))
                  return True;
                else
                    return False;
            }
            else
                    return False;    
           
      } 
    
     public static void createMap()
      {
          EqualsFunc o1 = new EqualsFunc(1,2);
          EqualsFunc o2 = new EqualsFunc(1,5);
          EqualsFunc o3 = new EqualsFunc(1,2);
         // EqualsFunc o4 = new EqualsFunc(7,8);
          
          Map<EqualsFunc, String>  m = new Map<EqualsFunc, String>();
          
             m.put(o1, 'first');
             m.put(o2, 'second');
          	 m.put(o3, 'third');
          	// m.put(o4, 'fourth');
          
          
          System.debug('Map size= '+m.size());
          
            /*  System.debug('o1.equals(o2) '+ o1.equals(o2));
          
            if(o1 == o2)
            {
                System.debug('o1==o2 :'+ True);
            }
          else{
                  System.debug('o1==o2 '+ False);
          }*/
            
            
      }
    
}