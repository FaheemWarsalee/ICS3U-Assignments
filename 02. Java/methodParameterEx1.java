/*
 Program:Method Exercise w/ Parameters 1
Programmer: Faheem Warsalee
Course: ICS3U
Date:April 10th 2018

Brief Description: (a) Write a procedure called printName(), which takes a single string parameter and displays it on the screen.
                                   (b) Write a procedure called printAddress(), which takes a single string parameter and displays it on the screen. Is this any different than part (a)?
                                   (c) Write a procedure called printSignature(), which takes TWO string parameters, a name and an address, and displays them on the screen.
*/

class methodParameterEx1
{
  public static void printSignature(String name, String adress)
  {
    System.out.println(name);
    System.out.println(adress);
  }
  
  public static void main(String [] args)
  {
    printSignature("Faheem", "123 Sesamee Street");
  }
}