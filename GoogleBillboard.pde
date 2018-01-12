public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
  //your code here
  int a = 2;
  int b = 12;
  String digits = e.substring(2, 12);
  double num = Double.parseDouble(digits);
  for (int i = 0; i <= e.length(); i++) {
    if (isPrime(num) == true) {
      System.out.println(num);
      break;
    } else {
      a += 1;
      b += 1;
      digits = e.substring(a,b);
      num = Double.parseDouble(digits);
    }
  }
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double num)  
{      
  if (num == 1) {
    return false;
  } else if (num < 0) {
    return false;
  }

  for (int i = 2; i <= Math.sqrt(num); i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
} 