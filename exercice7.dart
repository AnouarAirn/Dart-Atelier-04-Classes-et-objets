class Tache {
  String description;
  static int nombreTotal = 0;

  Tache(this.description) {
    nombreTotal++;
  }
}

void main() {
  Tache('Faire le Sport');
  Tache('Etudier SQL');
  Tache('Appeler un ami');

  print('Nombre total de taches : ${Tache.nombreTotal}');
}
