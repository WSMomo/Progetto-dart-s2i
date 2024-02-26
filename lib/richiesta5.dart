/*
Scrivi la funzione che calcoli il risultato dell’esame di uno studente. 

Il voto ottenuto nella prova scritta può variare da +8 a -8.

Il voto ottenuto nella prova pratica può variare da 0 a 24.

Il risultato finale è la somma dei dati di pratica e di teoria.

Se lo studente prende come voto 18 è promosso, se prende meno è bocciato.

Se il voto complessivo tra teoria e pratica fa 31 o 32, il risultato sarà 30 e lode.
*/

/// In base ai parametri [provaScritta] e [provaPratica] ritorna
/// il superamento o meno dell'esame.
void calcolaRisultatoEsame(int provaScritta, int provaPratica) {
  bool provaNonSuperata = false;
  if (provaScritta < -8 || provaScritta > 8) {
    print('Prova scritta falsata, voto $provaScritta. Bocciato.');
    provaNonSuperata = true;
  }
  if (provaPratica < 0 || provaPratica > 24) {
    print('Prova pratica falsata, voto $provaPratica. Bocciato.');
    provaNonSuperata = true;
  }
  if (provaNonSuperata) return;

  int votoFinale = provaScritta + provaPratica;

  if (votoFinale < 18) {
    print('Bocciato. Voto finale $votoFinale');
  } else if (votoFinale > 30) {
    print('Complimenti. Voto finale 30 e lode');
  } else {
    print('Promosso. Voto finale $votoFinale');
  }
}
