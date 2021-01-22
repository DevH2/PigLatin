public void setup() 
{
  //String[] lines = loadStrings("words.txt");
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{ 
  if(sWord.length()>0){
    for(int i = 0;i<sWord.length();i++){
      switch(sWord.charAt(i)){
        case 'a':
          return i;
        case 'e':
          return i;
        case 'i':
          return i;
        case 'o':
          return i;
        case 'u':
          return i;
      }
    }
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1){
    return sWord + "ay";
  } else if(findFirstVowel(sWord) == 0){
    return sWord+"way";
  } else if(shiftQu(sWord)){
    return sWord.substring(2,sWord.length())+sWord.substring(0,2)+"ay";
  } else if(findFirstVowel(sWord) != -1 && findFirstVowel(sWord) != 0){
    return sWord.substring(findFirstVowel(sWord))+sWord.substring(0,findFirstVowel(sWord))+"ay";
  }else{
    return "ERROR!";
  }
}

public boolean shiftQu(String sWord){
  if(sWord.substring(0,2).equals("qu")){
    return true;
  } else {
    return false;
  }
}
