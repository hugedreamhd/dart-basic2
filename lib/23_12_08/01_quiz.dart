/*class Word {
  String word = '';

  bool isVowel(int i) {
    String vowel = word.substring(i, i + 1);
    return vowel == 'a' ||
        vowel == 'e' ||
        vowel == 'i' ||
        vowel == 'o' ||
        vowel == 'u';
  }

  bool containVowel(int i) {
    return isVowel(i);
  }
}

void main() {
  Word myWord = Word();
  myWord.word = 'scaleti';

  bool result = myWord.isVowel(6);
  print(result);
}
*/

class Word{
  String word ='';

  bool isVowel(int i){
    return word.substring(i, i + 1) == 'a';
  }

  bool isConsonant(int i){
    return false;
  }
}