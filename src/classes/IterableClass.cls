public class IterableClass implements iterable<object>{
    
  public Iterator<object>  iterator()
    {
        return new contactIterator();
    }

}