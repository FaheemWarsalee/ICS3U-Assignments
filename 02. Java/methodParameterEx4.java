/*
 Program:Method Exercise w/ Parameters 4
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date:April 10th 2018
 
 Brief Description: Use the printBar() procedure (see exercise B.1) to write a procedure printTriangle(), which prints a triangle centered on the page.  
 The number of rows in the triangle, and the character used to print the triangle, are the parameters of the procedure.
 */

class methodParameterEx4
{
  public static void printTriangle(char symb,int row)
  {
    for (int count = 1; count <= row; count++)
    {
      System.out.print(symb);
    }
  }
  
  public static void main(String[] args)
  {
    int row;
    
    System.out.print("how many symbols to output row 1: ");
    row = In.getInt();
    
    
    for(int i = row; i>=1; i--)
    {
      printTriangle('@', row--);
      System.out.println("");
    }
  }
  
}

