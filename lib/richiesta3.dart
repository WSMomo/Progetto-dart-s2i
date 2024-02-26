/*
Completa la funzione in modo tale che stampi l’area del rettangolo 
avendo come parametri l’altezza e la base. 

final int base = 4; 

final int altezza = 6;
*/

int areaRettangolo() {
  final int base = 4;
  final int altezza = 6;
  int area = base * altezza;
  String risposta =
      'L\'area del rettangolo con base $base e altezza $altezza è $area';
  print(risposta);
  return area;
}
