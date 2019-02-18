/*
*Program:Method Assignment Level 3
*Programmer: Faheem Warsalee
*Course: ICS3U
*Date: April 20th 2018

*Brief Description: Lvl 4++:Take the Lvl 4+ and... 
*                                 -error proof.
*                                 -stop players from inputting the same value 3x.
*                                 -Create tie breaker rounds so no ties can happen.
                           */

class MethodsAssignmentL4PP
{
  //Checks which user input is minimum, min is returned to displayValues to be output
  public static int min(int numA,int numB)
  {
    if (numA < numB)
    {
      return (numA);
    }
    else
    {
      return (numB);
    }
  }
  
  //Method min() overloaded with 3rd integer
  public static int min(int numA,int numB, int numC)
  {
    if (numA < numB && numA < numC)
    {
      return (numA);
    }
    else if (numB < numC)
    {
      return (numB);
    }
    else
    {
      return (numC);
    }
  }
  
  //Method that determines mid using min and max. Retrun mid to displayValues method.
  public static int mid(int numA,int numB, int numC)
  {
    if (numC > min(numA, numB) && numC < max(numA, numB))
    {
      return (numC);
    }
    else if (min(numA,numB) > numC)
    {
      return (min(numA, numB));
    }
    else
    {
      return (max(numA, numB));
    }
  }
  
  //checks which user input is maximum, max is returned to displayValues to be output
  public static int max(int numA,int numB)
  {
    if (numA > numB)
    {
      return (numA);
    }
    else
    {
      return (numB);
    } 
  }
  
  //Method overloading for method max()
  public static int max(int numA,int numB, int numC)
  {
    if (numA > numB && numA > numC)
    {
      return (numA);
    }
    else if (numB > numC)
    {
      return (numB);
    }
    else
    {
      return (numC);
    }
  }
  
  public static void winnerStat(String p1, String p2, int[] scores,int[] points2Win, boolean[] winConds)
  {
   
    if(winConds[0])//condition for p1 win
    {
      System.out.println(p1 + " Wins.");
    }
    else if(winConds[1])//condtion for p2 win
    {
      System.out.println(p2 + " Wins.");
    }
    else if(winConds[2])//condition for p3 win
    {
      System.out.println("Computer Wins.");
    }
  }
  
  //CHECKS IF THERE IS A WINNER  
  public static boolean winnerIsTrue(int[] scoreCounter, int[] points2Win)
  {
    if((scoreCounter[0] ==points2Win[0] && scoreCounter[1] == points2Win[1] && scoreCounter[2] == points2Win[0] )|| //When player 1 wins
       (scoreCounter[3] == points2Win[0] && scoreCounter[4] == points2Win[1] && scoreCounter[5] ==points2Win[0]) || //or Player 2 wins
       (scoreCounter[6] == points2Win[0] && scoreCounter[7] ==points2Win[1] &&scoreCounter[8] == points2Win[0]) )//or computer wins
    {
      return true;//returning true so that loop can stop
    }
    else
    {
      return false;//returns false if no1 wins and loop continues until some1 does
    }
  }
  
  //Parsing Integers
  public static int parsingInt(String userNum)
  {
    try
    {
      int num = Integer.parseInt(userNum);//Turns the string input into a integer if possible 
      return num;//return the new num as an integer if can
    }
    catch (NumberFormatException e) //If cannot, catch it and return a 0
    {
      return 0;//returning a 0 so that it is purposefully out of range and the isInputValid() method displays the error mesage
    }
  }
  
  //Checks player's number if invalid; if invalid return true, if valid return false.
  public static boolean isInputInvalid(int num)
  {
      if (num < 1 || num >10)
      {
        System.out.println("Enter an INTEGER between 1-10");// When the user's number is out of the range display this error message
        return true;
      }
      else
      {
        return false;//if inside range, continue
      }
  }
  
  //Player 1's position (lowest, middle or highest number)
  public static String p1Out(int numA, int numB, int numC)
  {
    if (numA==numB || numA==numC)
    {
      return "Tie";
    }
    else if (numA == max(numA,numB,numC))
    {
      return "High";
    }
    else if (numA == mid(numA,numB,numC))
    {
      return "Medium";
    }
    else
    {
      return "Low";
    }
  }
  
  //Player 2's position (lowest, middle or highest number)
  public static String p2Out(int numA, int numB, int numC)
  {
    if (numB==numA || numB==numC)
    {
      return "Tie";
    }
    else if (numB == max(numA,numB,numC))
    {
      return "High";
    }
    else if (numB == mid(numA,numB,numC))
    {
      return "Medium";
    }
    else
    {
      return "Low";
    }
  }
  
  //Computer's position (lowest, middle or highest number)
  public static String p3Out(int numA, int numB, int numC)
  {
    if (numC==numB || numC==numA)
    {
      return "Tie";
    }
    else if (numC == max(numA,numB,numC))
    {
      return "High";
    }
    else if (numC == mid(numA,numB,numC))
    {
      return "Medium";
    }
    else
    {
      return "Low";
    }
  }
  
  public static void repeatingEntries(int[] prevInpCounts)
  {
    if (prevInpCounts[0] >= 3)//Condition for when error message should display
    {
      System.out.println("You cannot enter the same Integers 3x in a row.");//Error message for 3 same consectuive integers
    }
    else if(prevInpCounts[1] >=3)
    {
      System.out.println("You cannot enter the same Integers 3x in a row.");
    }
    else if(prevInpCounts[2] >=3)
    {
      System.out.println("Computer has chosen the same number 3x in a row; that is prohibited.");
    }
   }
  
  //DISPLAYS ALL CHOICES w/ THAT ROUNDS RESULTS (L/M/H/T)
  public static void choiceNums(int numA,int numB,int numC,String player1,String player2)
  {
    System.out.println("\n" + player1 + "'s choice : " + numA + "\t" + p1Out(numA,numB,numC));//Player 1 choice
    System.out.println(player2 + "'s choice : " + numB + "\t" + p2Out(numA, numB, numC));//Player2 choice
    System.out.println("Computer's choice : " + numC + "\t" + p3Out(numA, numB, numC)); //Computer Choice
  }
  
  //DISPLAYS SCOREBOARD PROCEDURE
  public static void scoreBoard(int numA, int numB, int numC, String p1, String p2, int[] scoreCounts)
  {
    System.out.println("\n======SCOREBOARD======");
    System.out.println("\t\tLowest" + "\t\tMiddle" + "\t\tHighest");
    System.out.println(p1 + "\t\t" + scoreCounts[0] + "\t\t" + scoreCounts[1] + "\t\t" + scoreCounts[2] );
    System.out.println(p2 + "\t\t" + scoreCounts[3] + "\t\t" + scoreCounts[4] + "\t\t" + scoreCounts[5] );
    System.out.println("Comp" + "\t\t" + scoreCounts[6] + "\t\t" + scoreCounts[7] + "\t\t" + scoreCounts[8] );
    System.out.println("");
    
  }
  
  //=======MAIN METHOD========
  public static void main(String[] args)
  {
    //Variables 
    String userNumA, userNumB; 
    int userNumC;
    int round = 0;
    String userName1, userName2;
    
    //Arrays
    int prevInps[] = new int[3];//Gets the previous inputs of both players so they cannot be the same 3 times
    int points2Win[] = new int[2]; //used to increase the scorecards if a tie happens
    int scoreCounts[] = new int[9]; //contains the 9 scoreboard counters that keeps track of points
    int prevInpCount[] = new int[3];//Counts everytime a player has input the same value more than once.
    boolean winConds[] = new boolean[3]; //boolean contains all the win conditions for each player
    
    //Set points 2 win initially. so base points needed to win, if no1 ties, is 3,5,3
    points2Win[0] = 3;//Represents low and high points needed to win
    points2Win[1] = 5;//represents middle points needed to win.
    
    //Name inputs
    System.out.print("Player 1's Name:");
    userName1 = In.getString();
    
    System.out.print("Player 2's Name:");
    userName2 = In.getString();
    
    do
    {
      //Player 1 choice
      do
      {
        do
        {
          System.out.print(userName1 + " enter an Integer:");
          userNumA = In.getString();
          
          parsingInt(userNumA);//Tries to convert string to int, if cant error message.
        }
        while(isInputInvalid(parsingInt(userNumA)));//Verifies range of number
        
        if (prevInps[0]==parsingInt(userNumA))//Checks to see if the previous input is the same as the newest inpout
        {
          prevInpCount[0] ++;//counter increases everytime the same number is input more than once every round
        }
        else
        {
          prevInps[0] = parsingInt(userNumA);
          prevInpCount[0] = 1;
        }
        
        repeatingEntries(prevInpCount);
      }
       while(prevInpCount[0]>=3);//Loops when 3 consecutive inputs are the same
    
       //Player 2 Choice
        do
        {
          do
          {
            System.out.print(userName2 + " enter an Integer:");
            userNumB = In.getString();
            
            parsingInt(userNumB);//Tries to convert string to int, if cant error message.
          }
          while(isInputInvalid(parsingInt(userNumB)));//Verifies range of number
          
          if (prevInps[1]==parsingInt(userNumB))
          {
            prevInpCount[1] ++;
          }
          else
          {
            prevInps[1] = parsingInt(userNumB);
            prevInpCount[1] = 1;
          }
          
          repeatingEntries(prevInpCount);
        }
        while (prevInpCount[1] >= 3);
      

      //Computer Choice:
      do
      {
        userNumC = (int)(10*Math.random())+1;//Generate a random value from 1-10 for cpu's input
        
        if(prevInps[2]==userNumC)
        {
          prevInpCount[2]++;
        }
        else
        {
          prevInps[2] = userNumC;
          prevInpCount[2] =1;
        }
        
        repeatingEntries(prevInpCount);
          
      }
      while (prevInpCount[2] >=3);
      
      //Round counter.
      round = round +1;
      System.out.println("\nRound: "+round);
      
      //Displays the choices and which num is low, med high for each player.
      choiceNums(parsingInt(userNumA), parsingInt(userNumB), userNumC, userName1, userName2);
      
      //SCORE COUNT FOR PLAYER 1 WHEN NOT TIE
      if(parsingInt(userNumA) != parsingInt(userNumB) && parsingInt(userNumA) !=userNumC)
      {
        if (parsingInt(userNumA) == min(parsingInt(userNumA),parsingInt(userNumB),userNumC) && scoreCounts[0]<points2Win[0])
        {
          scoreCounts[0]++;//Player 1 low counter
        }
        else if (parsingInt(userNumA) == mid(parsingInt(userNumA),parsingInt(userNumB),userNumC)&& scoreCounts[1]<points2Win[1])
        {
          scoreCounts[1]++;//Player 1 middle counter
        }
        else if (parsingInt(userNumA) == max(parsingInt(userNumA),parsingInt(userNumB),userNumC)&& scoreCounts[2]<points2Win[0])
        {
          scoreCounts[2]++;//Player 1 high counter
        }
      }
      
      //SCORE COUNT FOR PLAYER 2 WHEN NOT TIE
      if(parsingInt(userNumB) != userNumC && parsingInt(userNumB) !=parsingInt(userNumA))
      {
        if (parsingInt(userNumB) == min(parsingInt(userNumA),parsingInt(userNumB),userNumC) && scoreCounts[3]<points2Win[0])
        {
          scoreCounts[3]++;//Player 2 low counter
        }
        else if (parsingInt(userNumB) == mid(parsingInt(userNumA),parsingInt(userNumB),userNumC) && scoreCounts[4]<points2Win[1])
        {
          scoreCounts[4]++;//Player 2 middle counter
        }
        else if (parsingInt(userNumB) == max(parsingInt(userNumA),parsingInt(userNumB),userNumC) && scoreCounts[5]<points2Win[0])
        {
          scoreCounts[5]++;//Player 2 high counter
        }
      }
      
      //SCORE COUNT FOR COMPUTER WHEN NOT TIE
      if(userNumC != parsingInt(userNumB) && userNumC !=parsingInt(userNumA))
      {
        if (userNumC == min(parsingInt(userNumA),parsingInt(userNumB),userNumC) && scoreCounts[6]<points2Win[0])
        {
          scoreCounts[6]++;//Player 3 low counter
        }
        else if (userNumC == mid(parsingInt(userNumA),parsingInt(userNumB),userNumC) && scoreCounts[7]<points2Win[1])
        {
          scoreCounts[7]++;//Player 3 middle counter
        }
        else if (userNumC == max(parsingInt(userNumA),parsingInt(userNumB),userNumC) && scoreCounts[8]<points2Win[0])
        {
          scoreCounts[8]++;//Player 1 high counter
        }
      }
    
    //Set Win conditions for each player  
    winConds[0] = scoreCounts[0] ==points2Win[0] && scoreCounts[1] == points2Win[1] && scoreCounts[2] == points2Win[0];
    
    winConds[1] = scoreCounts[3] ==points2Win[0] && scoreCounts[4] == points2Win[1] && scoreCounts[5] == points2Win[0];
    
    winConds[2] = scoreCounts[6] ==points2Win[0] && scoreCounts[7] == points2Win[1] && scoreCounts[8] == points2Win[0];
    
    //If tie for winning points. increase scorecard
    if((winConds[0] && winConds[1])||(winConds[1] && winConds[2])||(winConds[0] && winConds[2])||(winConds[0] && winConds[1] && winConds[2]))
    {
      points2Win[0] = points2Win[0] + 3;//adds 3 to low and high rounds for points 2 win when a tie happens.
      points2Win[1] = points2Win[1] + 5;//adds 5 to the middle rounds for points 2 win when a tie happens
      
      System.out.println("\nTie Game! Players must complete 1 more scorecard.");
    }
      
      scoreBoard(parsingInt(userNumA), parsingInt(userNumB), userNumC, userName1, userName2, scoreCounts);// Displays the scores for every round
    }
    while(!winnerIsTrue(scoreCounts, points2Win));//loops everything inside the 1st "do" in the main while no one wins.
    winnerStat(userName1, userName2, scoreCounts, points2Win, winConds);//Displays the winning message to the winner.
  }
  
}