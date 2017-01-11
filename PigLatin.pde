import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord) //and find if it is qu
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for(int i=0; i<sWord.length(); i++)
  {
    String t=(sWord.substring(i,i+1));
    if(t.equals("qu")
      {
      	return -2;
      }
    if(t.equals("a") || t.equals("e")|| t.equals("i") || t.equals("o")|| t.equals("u"))
      {
        return i;
      }
 
  }
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	else if(findFirstVowel(sWord) == -2)
	{
		return sWord.substring(2,sWord.length) + sWord.substring(0,2) + "ay";
	}
	else if(findFirstVowel(sWord) != 0)
	{
		return sWord.substring(findFirstVowel(sWord),sWord.length()) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
	}
	else 
	{
		return "ERROR!";
	}
}
