public class Employee {
	
    Integer empId;
    String empName;
       
    public Employee(Integer eid, String name)
    {
        empId=eid;
        empName=name;
    }
    //implementing equals function to check for duplicate values in Employee class object and remove it
    public boolean  equals(Object obj)
     {
         if(obj instanceof Employee)
         {
             Employee emp= (Employee)obj;
             
             if ((emp.empId == this.empId) && (emp.empName == this.empName))
             {
                 return true;
             }
             else
             {
                 return false;
             }
         }
         else
             return false;
     } 
    //making one hash code for object with similar value
    public Integer hashCode()
    {
        return 100+empId;
    }
    public static void createData()
    {
        Employee emp1= new Employee(101,'Rohan');
        Employee emp2= new Employee(102,'Arijit');
        Employee emp3= new Employee(101,'Rohan');
        
        Set<Employee> empSet = new Set<Employee>();
         	
                  empSet.add(emp1);
        		  empSet.add(emp2);
        		  empSet.add(emp3);
        
         for(Employee emp: empSet)
         {
             System.debug('ID: '+emp.empId+' Name: '+emp.empName);
             
         }
        System.debug('emp1'+' :'+emp1.hashCode());
        System.debug('emp2'+' :'+emp2.hashCode());
        System.debug('emp3'+' :'+emp3.hashCode());
        
        if(empSet.contains(new Employee(101,'Rohan')))
        {
            System.debug('It contains: True');
        }
        else
        {
            System.debug('It contains: False');
        }
    }
}