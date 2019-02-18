/*
 Program:Method Exercise w/ Parameters B3
Programmer: Faheem Warsalee
Course: ICS3U
Date:April 10th 2018

Brief Description: Write a procedure called validateUser() waaw
                   that will ask for a username and password.  The user has 3 
                   tries to get it right, after which an error message will be output to
                   the screen.
*/

class methodParameterExB3
{
  public static void validateUser(String name, String pass)
  {
    String userName, userPass;
    int tries = 0 ;
    
    do
    {
      System.out.print("Username: ");
      userName = In.getString();
      
      System.out.print("Password: ");
      userPass = In.getString();
      
      tries++;
      
          if (!(userName.equals (name) && userPass.equals (pass)))
    {
      System.out.println("Incorrect Login");
      if (tries >= 3)
      {
        System.out.println("3 Login Attempts Failed");
      }
    }
    else
    {
      System.out.println("Correct Login");
    }
      
    }
    while (!(userName.equals (name) && userPass.equals (pass) || tries == 3));
    
  }
  
 public static void main(String[] args)
 {
   validateUser("Faheem", "Warsalee");
 }
}