public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  

public void setup()  
{            
  noLoop();  
}  

public void draw()  
{
  double answer = 0;
  for(int i = 2; i < e.length()-1; i++)
  {
  	String digits = e.substring(i,i+10);
  	double dNum = Double.parseDouble(digits);
  	
  	if(isPrime(dNum))
  	{
  	  answer = dNum;
  	  break;
  	}
  }
  System.out.println(answer);
}  

public boolean isPrime(double dNum)  
{   
  boolean answer = true;
  if(dNum == 1 || dNum < 0)
  {
    return false;
  }
  else
  {
    for(int i = 2; i <= Math.sqrt(dNum); i++)
    {
      if(dNum%i == 0)
      {
        return false;
      }
    }
  }
  return true;
} 