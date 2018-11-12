public class ListCheck {
    
    public static void checkList(){
        
        List<Integer> num = new Integer[1];
        Integer[] numb = new Integer[1];
        
        num[0]=0;
        num[1]=1; //If you’re using square brackets to add an element to a list, the list behaves like an array and isn’t elastic, that is, you won’t be allowed to add more elements than the declared array size.
        
        numb[0]=0;
        numb[1]=1;
        
        for(Integer i=0; i<2; i++){
            system.debug('num:['+i+'] '+num[i]);
            system.debug('numb:['+ i+'] '+numb[i]);
        }
        
    }

}