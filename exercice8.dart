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

void main() {
  var livre1 = Livre('The Psychology of Money', 'Morgan Housel');
  var livre2 = Livre('Unlock Your Power', 'Poppy Delbridge');
  print('Pages : ${livre1.pages}');

  livre1.afficherInfos();
  livre2.afficherInfos();
  Livre.afficherTotal();
}
