/* Name : Faheem Warsalee
 * Program : IPO EXERCISE 4 
 * Course : ICS3U
 * Date : March 29th 2018
 * Brief Description :
 */

class IPOExercise4
{
   public static void main (String[] args)
  
  {
    //Declaring Variable
    String userName;
    int userAge, currYear, age25, age50, age75, userBirth;
    
    //Inputs 
    System.out.print("Please Enter your name: ");
    userName = In.getString(); //Getting the string from user w/ in.Java 
    
    System.out.print("Please Enter your age: ");
    userAge = In.getInt();//Getting the interger from user w/ in.Java
    
    System.out.print("Please enter the current year");
    currYear = In.getInt();
    
    //Processing
    userBirth = currYear - userAge;
    age25 = userBirth + 25;
    age50 = age25 + 25;
    age75 = age50 + 25;
    
    //Output
    System.out.println(userName + ", you wil be 25 in the year " + age25);
    System.out.println(userName + ", you wil be 50 in the year " + age50);
    System.out.println(userName + ", you wil be 75 in the year " + age75);
    
   
  }
  
  
}