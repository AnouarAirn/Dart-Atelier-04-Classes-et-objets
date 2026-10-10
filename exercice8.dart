class Livre {
  String titre;
  String auteur;
  int _pages = 200;
  static int totalLivres = 0;

  Livre(this.titre, this.auteur) {
    totalLivres++;
  }

  int get pages {
    return _pages;
  }

  void afficherInfos() {
    print('Titre: $titre, Auteur: $auteur');
  }

  static void afficherTotal() {
    print('Total de livres créés : $totalLivres ');
  }
}

class Roman extends Livre {
  String genre;

  Roman(super.titre, super.auteur, this.genre);

  void afficherGenre() {
    print('Genre: $genre');
  }
}

void main() {
  var livre1 = Livre('The Psychology of Money', 'Morgan Housel');
  var livre2 = Livre('Unlock Your Power', 'Poppy Delbridge');
  print('Pages : ${livre1.pages}');

  livre1.afficherInfos();
  livre2.afficherInfos();
  Livre.afficherTotal();

  var roman1 = Roman('Agrippa', 'Robert Harris', 'historique');
  var roman2 = Roman(
    'La maison de vacances',
    'Keri Beevis',
    'Thriller psychologique',
  );

  roman1.afficherInfos();
  roman1.afficherGenre();
  roman2.afficherInfos();
  roman2.afficherGenre();
}
