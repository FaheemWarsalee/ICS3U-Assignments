class functionsExtend
{
 public static int multiply(int n)
 {
   n = n*n;
   
   return n;
 }
  
 public static void main(String[] args)
 {
  int userNum;
  do
  {
  System.out.print("Enter an Integer betwen 0-100: ");
  userNum = In.getInt();
  }
  while (userNum < 0 || userNum > 100);
  
  System.out.println(multiply(userNum) + " is " + userNum + " times itself");
 } 
}