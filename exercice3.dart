class Compte {
  double _solde = 0.0;
  final String numeroCompte;

  Compte(this.numeroCompte, [this._solde = 0.0]);

  String get solde {
    String montant = _solde.toStringAsFixed(2);
    return montant + '\$';
  }

  void depot(double montant) {
    if (montant > 0) {
      _solde += montant;
    }
  }
}

void main() {
  var compte = Compte('AN-485698');
  compte.depot(150);
  print(compte.solde);
}
