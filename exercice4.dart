class Media {
  final String titre;

  Media(this.titre);

  void afficherType() {
    print("Ceci est un média générique.");
  }
}

class Livre extends Media {
  final String auteur;

  Livre(super.titre, this.auteur);

  @override
  void afficherType() {
    print("Ceci est un Livre : $titre par $auteur.");
  }
}
