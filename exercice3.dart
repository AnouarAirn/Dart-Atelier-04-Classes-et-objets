class Compte {
  double _solde = 0.0;
  final String numeroCompte;

  Compte(this.numeroCompte, [this._solde = 0.0]);

  String get solde {
    String montant = _solde.toStringAsFixed(2);
    return montant + '\$';
  }
}
