public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}




public boolean palindrome(String word)
{
  String s = new String(word);
  s = noSpaces(s);
  s = noPunctuation(s);
  s = characters(s); 
  if(s.equals(reverse(s)) == true) 
{ 
  return true; 
} 

else
  return false;
}


public String noSpaces(String sWord) 
{ 
String a = new String(); 
  for(int i = 0; i < sWord.length(); i++) 
 { 
  if(sWord.substring(i , i + 1).equals(" ") == false) 
  { 
  a = a + sWord.substring(i, i + 1); 
  } 
  } 
  return a; 
} 



public String reverse(String str)
{
    String x = new String();
    for(int i = str.length() -1; i >= 0; i--) 
     { 
       x = x+str.substring(i, i + 1); 
    } 
    return x; 

}




public String noPunctuation(String str)
{
    return str.toLowerCase();
}


public String characters(String str){
  String bob= new String();
  for(int i =0; i<str.length(); i++){
    if(Character.isLetter(str.charAt(i))==true)
    bob=bob+str.charAt(i);
}
  return bob;

}


