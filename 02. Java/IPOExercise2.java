/* Name : Faheem Warsalee
 * Program : IPO EXERCISE 2 
 * Course : ICS3U
 * Date : 2018
 * Brief Description :This program will ask the user fro 4 course marks and output the avergae.
 */

class IPOExercise2
{
   public static void main (String[] args)
  
  {
    //Declaring Variables
    int mark1, mark2, mark3, mark4;
    float markAvg;
  
    //Inputs
    System.out.print("Enter Course Mark 1");
    mark1 = In.getInt();
    
    System.out.print("Enter Course Mark 2");
    mark2 = In.getInt();
    
    System.out.print("Enter Course Mark 3");
    mark3 = In.getInt();
    
    System.out.print("Enter Course Mark 4");
    mark4 = In.getInt();
    
    //Processing
    markAvg = ((mark1 + mark2 + mark3 + mark4)/4);
    
    //Output
    System.out.println("Mark 1: " + mark1);
    System.out.println("Mark 2: " + mark2);
    System.out.println("Mark 3: " + mark3);
    System.out.println("Mark 4: " + mark4);
      
    System.out.println("Average : " + markAvg);
   
  }
  
  
}