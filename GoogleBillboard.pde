public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059921817413596629043572900334295260595630738132328627943490763233829880753195251019011573834187930702154089149934884167509244761460668082264800168477411853742345442437107539077744992069551702761838606261331384583000752044933826560297606737113200709328709127443747047230696977209310141692836819025515108657463772111252389784425056953696770785449969967946864454905";  

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
  System.out.println("First 10-digit prime in e: " + answer);

  int count49 = 0;
  String answer2 = "";
  for(int i = 2; i < e.length()-1; i++)
  {
  	String digits = e.substring(i,i+10);
  	
  	if(sumOfDigits(digits) == 49.0)
  	{
  	  answer2 = digits;
  	  count49++;
  	}
  	if(count49 == 5)
  	{
  	  break;
  	}
  }
  System.out.println("Fifth 10-digit number with sum of digits equal to 49: " + answer2);
}

public double sumOfDigits(String dNum)
{
  double [] digits = new double[dNum.length()];
  double answer = 0.0;

  for(int i = 0; i < dNum.length(); i++)
  {
    String number = dNum.substring(i,i+1);
    digits[i] = Double.parseDouble(number);
  }
  for(int i = 0; i < digits.length; i++)
  {
    answer = answer + digits[i];
  }
  
  return answer;
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