/*
 Program:Array Adavanced
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: May 3rd 2018
 
 Brief Description:Use code from GitHub repository and make it work for a pair of dice.*/


class frequencyTable
{  
  public static void main(String[] args)
  {
    int roll1, roll2;  
    int[] freq = new int[11];  
    
    for(int rollNum = 1; rollNum <= 1000 ; rollNum++)
    {
      roll1 = (int)(6*Math.random())+1; 
      roll2 = (int)(6*Math.random())+1;// random roll between 1-6
      ++freq[(roll1+roll2)-2]; //Filling the frequency array
    }
    
    System.out.println("Die Face\t\t\tFrequency");
    for(int i = 0; i < freq.length; i++)
    {
      System.out.println("   "+(i+2)+"\t\t\t\t   "+freq[i]);
    }
    
  }    
}