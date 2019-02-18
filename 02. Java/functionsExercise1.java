/* Name : Faheem Warsalee
 * Program : functions exercise 1
 * Course : ICS3U
 * Date : April 13th 2018
 * Brief Description : (a) Create a function that determines the circumference of a circle given the radius.  Write a program that will let you test your function repeatedly (preferably using a loop).
                                        (b) Add a function for determining the area of a circle, and add this information to your output for the user.
                                        (c) Are there values for the radius that don't make sense?  Disallow this type of input and notify the user of the problem.  Since you should be using a loop, the user will be asked to enter their value again.
                                        (d) Build in a way to exit the program.
 */
class functionsExercise1
{
  public static double circumference(double radius)
  {
   double circum = 2*Math.PI*radius;
    
   return (circum);
  }
  
  public static void main(String[] args)
  {
    double userRadius;
    
    System.out.print("Enter a radius: ");
    userRadius = In.getDouble();
    
    System.out.println(circumference(userRadius));
    
  }
}