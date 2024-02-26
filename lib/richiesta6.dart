/*
Data la classe Persona, richiama nel main due differenti 
oggetti aventi nome, cognome, email, password e data di nascita.
*/

class Persona {
  String nome;
  String cognome;
  String email;
  String password;
  DateTime dataDiNascita;

  Persona(
      {required this.nome,
      required this.cognome,
      required this.email,
      required this.password,
      required this.dataDiNascita});

  @override
  String toString() {
    return 'Persona:\n Nome: $nome\n Cognome: $cognome\n Email: $email\n Password:$password\n Data di nascita:${dataDiNascita.day}/${dataDiNascita.month}/${dataDiNascita.year}\n';
  }
}
