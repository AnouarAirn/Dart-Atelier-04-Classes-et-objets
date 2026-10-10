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

class Film extends Media {
  final int dureeMinutes;

  Film(super.titre, this.dureeMinutes);

  @override
  void afficherType() {
    print("Ceci est un Film : $titre  ($dureeMinutes minutes).");
  }
}

void main() {
  List<Media> catalogue = [];

  catalogue.add(Livre('Un rien peut tout changer', 'James Clear'));
  catalogue.add(Livre('Le Pouvoir du moment présent', 'Eckhart Tolle'));
  catalogue.add(Film('The Odyssey', 172));
  catalogue.add(Film('Sinners', 137));

  for (var m in catalogue) {
    m.afficherType();
  }
}
