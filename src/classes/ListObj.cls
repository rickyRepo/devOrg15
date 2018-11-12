public class ListObj {
    Integer x;
    String  y;

    ListObj()
    {
        x=0;
        y='';
    }
   
    ListObj(Integer p, String q)
    {
        x=p;
        y=q;
    }
    
      public static void printData( )
      {
          ListObj o1 =new ListObj(5,'Rahul');
          ListObj o2= new ListObj(5,'Singh');
          ListObj o3= new ListObj(6,'Rajesh');
          
         List<ListObj>   listOfObj = new List<ListObj>();
          
            listOfObj.add(o1);
            listOfObj.add(o2);
            listOfObj.add(o3);
          
          for(Integer i=0; i<3; i++)
          {
              System.debug(listOfObj[i]);
          }
          
      }
}