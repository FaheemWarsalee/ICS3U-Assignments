/* Name : Faheem Warsalee
 * Program : IPO EXERCISE 1 
 * Course : ICS3U
 * Date : March 28th 2018
 * Brief Description :Gets the users name age and adress, and outputs it back to them.
 */

class IPOExercise1
{
   public static void main (String[] args)
  
  {
    //Declaring Variable
    String userName, userAdress;
    int userAge;
    
    //Inputs 
    System.out.print("Please Enter your name: ");
    userName = In.getString(); //Getting the string from user w/ in.Java 
    
    System.out.print("Please Enter your age: ");
    userAge = In.getInt();//Getting the interger from user w/ in.Java 
    
    System.out.print("Please Enter your adress: ");
    userAdress = In.getString();
    
    //Outputs
    System.out.println("Hello, " + userName + ", who is " + userAge + " Years old");
    System.out.println(userName + " you live on " + userAdress);
   
  }
  
  
}