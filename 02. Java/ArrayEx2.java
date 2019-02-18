/*
 Program:Array Exercise 1
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: May 3rd 2018
 
 Brief Description:Write a program to keep track of many rolls of a single die (each roll should be random).  
                   Use an array to keep track of each roll (1 to 6).  Allow the user to choose the number of 
                   rolls.  After the rolling is complete, display the results for each possible roll (1 to 6). 
(a) When displaying the results for a single roll, also display the percentages for that roll (i.e., what 
    percent of the rolls were 1, or 2, or 3, etc.)
(b) Simulate two dice being rolled.  The user picks number of rolls.  Display percentages.
(c) When performing a large simulation, there can be dead time on the monitor (nothing happens to let the 
    user know the program is still running).  Experiment with ways to show the user that the program is running 
    (think of progress bars or other indicators you might have seen with programs such as installers). */

class ArrayEx2
{
  public static void main(String[] args)
  {
    int rollTime, dieRoll1, dieRoll2, sum;
    int[] counter = {2,3,4,5,6,7,8,9,10,11,12};
    int[] perc = {2,3,4,5,6,7,8,9,10,11,12};
    
    
    System.out.print("How many times to roll die: ");
    rollTime = In.getInt();
    
    int[] rollHold = new int[rollTime];
    
    for (int i = 0; i < rollTime; i++)
    {
      dieRoll1 = (int)(6*Math.random())+1;
      dieRoll2 = (int)(6*Math.random())+1;
      
      sum = dieRoll1 + dieRoll2;
      
      rollHold[i] = sum;
      
      if(sum == 2)
      {
        counter[2]++;
      }
      else if (sum == 3)
      {
        counter[3]++;
      }
       else if (sum == 4)
      {
        counter[4]++;
      }
        else if (sum == 5)
      {
        counter[5]++;
      }
         else if (sum == 6)
      {
        counter[6]++;
      }
          else if (sum == 7)
      {
        counter[7]++;
      }
           else if (sum == 8)
      {
        counter[7]++;
      }
            else if (sum == 9)
      {
        counter[10]++;
      }
             else if (sum == 11)
      {
        counter[11]++;
      }
              else if (sum == 12)
      {
        counter[12]++;
      }
    }
    
    perc[2] = (counter[2]/rollTime)*100;
    perc[3] = (counter[3]/rollTime)*100;
    perc[4] = (counter[4]/rollTime)*100;
    perc[5] = (counter[5]/rollTime)*100;
    perc[6] = (counter[6]/rollTime)*100;
    perc[7] = (counter[7]/rollTime)*100;
    perc[8] = (counter[8]/rollTime)*100;
    perc[9] = (counter[9]/rollTime)*100;
    perc[10] = (counter[10]/rollTime)*100;
    perc[11] = (counter[11]/rollTime)*100;
    perc[12] = (counter[12]/rollTime)*100;
    
    for(int put : rollHold)
    {
      System.out.println(put);
    }
    
    for(int i = 0; i < rollTime; i++)
    {
      System.out.println("Percentage " + (i+1) + ":" + perc[i]);
    }
  }
}