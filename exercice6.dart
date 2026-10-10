class Connectable {
  void connecter(String utilisateur) {}
  void deconnecter() {}
}

@override
class ServeurAPI implements Connectable {
  void connecter(String utilisateur) {
    print('ServeurAPI : Connexion établie pour $utilisateur. ');
  }

  @override
  void deconnecter() {
    print('ServeurAPI : Déconnexion réussie.');
  }
}

class BaseDeDonnees implements Connectable {
  @override
  void connecter(String utilisateur) {
    print('BaseDeDonnes : Connexion ouverte pour $utilisateur.');
  }

  @override
  void deconnecter() {
    print('BaseDeDonnees : Connexion fermée.');
  }
}

void main() {
  var api = ServeurAPI();
  var db = BaseDeDonnees();
  List<Connectable> services = [];
  services.add(api);
  services.add(db);

  for (var s in services) {
    s.connecter('Anouar');
    s.deconnecter();
  }
}
