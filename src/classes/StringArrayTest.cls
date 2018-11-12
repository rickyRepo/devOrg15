public class StringArrayTest 
{
	public  static String [] generateStringArray(Integer num)
    {
        
        List <String> str= new List <String> ();
        
        for(Integer i=0; i<num; i++)
            str.add('Test '+i);
        //System.debug('Method called '+num);
        //System.debug(str);
        return str;
    }
}