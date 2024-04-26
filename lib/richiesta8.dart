/* 
Scrivi una classe astratta di tipo Persona che abbia come parametri nome, cognome, codice ed età. 

Scrivi una classe Docente che estende la classe Persona e rappresenti le seguenti informazioni relative
 a un docente: nome, cognome, codice ed età (da classe astratta), e contenga i metodi getCodice, getCognome, 
 GetNome e getEta che restituiscono rispettivamente il codice, il cognome, il nome e l’età del docente. 

Scrivi una classe Studenti che rappresenti le seguenti informazioni relative a uno studente
 e i get come sopra (che estende anch’essa la classe astratta): nome, cognome, età e codice.

Scrivi poi una classe Università, che rappresenti un insieme di docenti universitari tramite
 un array di tipo Docente e un insieme di studenti (array di studenti).

Inserisci nell’Univeristà i seguenti metodi: 

cercaDocentiByCodice

cercaDocentiByCognome

cercaStudentiByCodice

cercaStudenteByCognome

mediaEtàStudenti

mediaEtàDocenti
*/
import 'package:collection/collection.dart';

abstract class _Persona {
  String nome;
  String cognome;
  String codice;
  int eta;
  _Persona(this.nome, this.cognome, this.codice, this.eta);
  String getCodice();
  String getCognome();
  String getNome();
  int getEta();
}

class Docente extends _Persona {
  Docente(super.nome, super.cognome, super.codice, super.eta);

  @override
  String getCodice() {
    return codice;
  }

  @override
  String getCognome() {
    return cognome;
  }

  @override
  int getEta() {
    return eta;
  }

  @override
  String getNome() {
    return nome;
  }

  @override
  String toString() {
    return 'Docente:\n Nome: $nome\n Cognome: $cognome\n Età: $eta\n Codice: $codice\n';
  }
}

class Studente extends _Persona {
  Studente(super.nome, super.cognome, super.codice, super.eta);

  @override
  String getCodice() {
    return codice;
  }

  @override
  String getCognome() {
    return cognome;
  }

  @override
  int getEta() {
    return eta;
  }

  @override
  String getNome() {
    return nome;
  }

  @override
  String toString() {
    return 'Studente:\n Nome: $nome\n Cognome: $cognome\n Età: $eta\n Codice: $codice\n';
  }
}

class Universita {
  List<Studente> studenti;
  List<Docente> docenti;
  Universita(this.docenti, this.studenti);

  void cercaDocentiByCodice(String codice) {
    Iterable<Docente> docentiTrovati =
        docenti.where((docente) => docente.codice == codice);

    if (docentiTrovati.isNotEmpty) {
      int numeroDocentiTrovati = docentiTrovati.length;
      print(
          '$numeroDocentiTrovati ${numeroDocentiTrovati > 1 ? "docenti" : "docente"} con il codice "$codice":\n');
      for (Docente docente in docentiTrovati) {
        print(docente.toString());
      }
    } else {
      print('Nessun docente trovato con il codice "$codice"\n');
    }
  }

  void cercaDocentiByCognome(String cognome) {
    Iterable<Docente> docentiTrovati =
        docenti.where((docente) => docente.cognome == cognome);

    if (docentiTrovati.isNotEmpty) {
      int numeroDocentiTrovati = docentiTrovati.length;
      print(
          '$numeroDocentiTrovati ${numeroDocentiTrovati > 1 ? "docenti" : "docente"} con il cognome "$cognome":\n');
      for (Docente docente in docentiTrovati) {
        print(docente.toString());
      }
    } else {
      print('Nessun docente trovato con il cognome "$cognome"\n');
    }
  }

  void cercaStudentiByCodice(String codice) {
    Iterable<Studente> studentiTrovati =
        studenti.where((docente) => docente.codice == codice);

    if (studentiTrovati.isNotEmpty) {
      int numeroStudentiTrovati = studentiTrovati.length;
      print(
          '$numeroStudentiTrovati ${numeroStudentiTrovati > 1 ? "docenti" : "docente"} con il codice "$codice":\n');
      for (Studente studente in studentiTrovati) {
        print(studente.toString());
      }
    } else {
      print('Nessun docente trovato con il codice "$codice"\n');
    }
  }

  void cercaStudenteByCognome(String cognome) {
    Studente? studenteTrovato =
        studenti.firstWhereOrNull((studente) => studente.cognome == cognome);

    if (studenteTrovato != null) {
      print('Studente con il cognome $cognome');
      print(studenteTrovato.toString());
    } else {
      print('Nessun studente trovato con il cognome "$cognome"\n');
    }
  }

  void mediaEtaStudenti() {
    int sommaEtaStudenti =
        studenti.fold(0, (int acc, Studente studente) => acc + studente.eta);
    print('Media età studenti: "${sommaEtaStudenti / studenti.length}"');
  }

  void mediaEtaDocenti() {
    int mediaEtaDocenti =
        docenti.fold(0, (int acc, Docente docente) => acc + docente.eta);
    print('Media età docenti: "${mediaEtaDocenti / docenti.length}"');
  }
}
