/*
Stampa a video questa figura:

******

*****

****

***

**

*
*/

void stampaAsterischi(int initialValue) {
  String initialString = '*' * initialValue;
  for (int i = 0; i < initialValue; i++) {
    print(initialString.substring(0, initialString.length - i));
  }
}
