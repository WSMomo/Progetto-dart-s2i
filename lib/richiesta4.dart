/*
Completa la funzione in modo tale che stampi la somma di due numeri interi, 
se i due valori sono uguali fai la stampa del triplo della loro somma.

   Per esempio:

    Inseriti 2, 3 → stampa 5
    Inseriti 2, 2 → stampa 12 (perchè (2+2) * 3 = 12)
*/

sommaProdotto(int a, int b) {
  if (a != b) {
    print('La somma di $a e $b è ${a + b}');
  } else {
    print('La somma di $a e $b moltiplicate per 3 è ${(a + b) * 3}');
  }
}
