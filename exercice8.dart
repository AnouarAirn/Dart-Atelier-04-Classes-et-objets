class Livre {
  String titre;
  String auteur;

  Livre(this.titre, this.auteur);

  void afficherInfos() {
    print('Tire: $titre, Auteur: $auteur');
  }
}

void main() {
  var livre1 = Livre('The Psychology of Money', 'Morgan Housel');
  var livre2 = Livre('Unlock Your Power', 'Poppy Delbridge');

  livre1.afficherInfos();
  livre2.afficherInfos();
}
