public class CustomIterable  {
    
    public void iterableString(){
        list<String> str= new list<String>(0);
        str.add('this');
        str.add('is');
        str.add('an');
        str.add('iterable');
        str.add('string');
        
        Iterator<string> itr= str.iterator();
        
        while(itr.hasNext())
        {
            System.debug(itr.next());
        }
        
    }

}