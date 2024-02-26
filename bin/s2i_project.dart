import 'package:s2i_project/richiesta1.dart';
import 'package:s2i_project/richiesta2.dart';
import 'package:s2i_project/richiesta3.dart';
import 'package:s2i_project/richiesta4.dart';
import 'package:s2i_project/richiesta5.dart';
import 'package:s2i_project/richiesta6.dart';
import 'package:s2i_project/richiesta7.dart';
import 'package:s2i_project/richiesta8.dart';

void main(List<String> arguments) {
  // Richiesta 1
  print('Richiesta 1\n');
  stampaAsterischi(6);

  // Richiesta 2
  print('\nRichiesta 2\n');
  palindroma('ingegni');
  palindroma('impegni');

  // Richiesta 3
  print('\nRichiesta 3\n');
  areaRettangolo();

  // Richiesta 4
  print('\nRichiesta 4\n');
  sommaProdotto(2, 3);
  sommaProdotto(2, 2);

  // Richiesta 5
  print('\nRichiesta 5\n');
  calcolaRisultatoEsame(-9, 1);
  calcolaRisultatoEsame(10, 0);
  calcolaRisultatoEsame(8, 30);
  calcolaRisultatoEsame(8, -20);
  calcolaRisultatoEsame(6, 9);
  calcolaRisultatoEsame(8, 10);
  calcolaRisultatoEsame(8, 24);

  // Richiesta 6
  print('\nRichiesta 6\n');
  Persona persona1 = Persona(
      nome: 'Mario',
      cognome: 'Rossi',
      email: 'mario.rossi@email.it',
      password: 'abc123',
      dataDiNascita: DateTime(1900, 20, 10));
  Persona persona2 = Persona(
      nome: 'Lucia',
      cognome: 'Verdi',
      email: 'lucia.verdi@email.com',
      password: 'password1',
      dataDiNascita: DateTime(1990, 02, 1));
  print(persona1.toString());
  print(persona2.toString());

  // Richiesta 7
  print('\nRichiesta 7\n');
  calcolaMedia([6, 3, 1, 2, 9]);

  // Richiesta 8
  print('\nRichiesta 8\n');
  List<Docente> docenti = [
    Docente("Mario", "Rossi", "D1", 40),
    Docente("Anna", "Bianchi", "D2", 35),
    Docente("Luigi", "Bianchi", "D2", 45),
    Docente("Gioia", "Neri", "D4", 38),
    Docente("Giovanni", "Gialli", "D5", 50),
  ];
  List<Studente> studenti = [
    Studente("Giulio", "Grigi", "S1", 10),
    Studente("Maria", "Blu", "S2", 15),
    Studente("Luigi", "Verdi", "S3", 25),
    Studente("Riccardo", "Arancio", "S4", 20),
    Studente("Marco", "Verdi", "S5", 14),
  ];

  Universita universita = Universita(docenti, studenti);
  universita.cercaDocentiByCodice('D1');
  universita.cercaDocentiByCodice('D2');
  universita.cercaDocentiByCodice('D6');
  universita.cercaDocentiByCognome('Rossi');
  universita.cercaDocentiByCognome('Bianchi');
  universita.cercaDocentiByCognome('Marroni');
  universita.cercaStudenteByCognome('Verdi');
  universita.cercaStudenteByCognome('Bianchi');
  universita.mediaEtaDocenti();
  universita.mediaEtaStudenti();
}
