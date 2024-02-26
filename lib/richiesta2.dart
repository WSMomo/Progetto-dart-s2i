/* 
Data la stringa “ingegni”, verifica se è una parola palindroma, 
in tal caso stampa “La stringa è palindroma”,
altrimenti “La stringa non è palindroma”.
Per esempio,
 se la stringa ha il valore esempio “ingegni” → stampa “La stringa è palindroma”.
*/

bool palindroma(String isPalindrom) {
  if (isPalindrom == isPalindrom.split('').reversed.join()) {
    print('La stringa "$isPalindrom" è palindroma');
  } else {
    print('La stringa "$isPalindrom" non è palindroma');
  }

  return isPalindrom == isPalindrom.split('').reversed.join();
}
