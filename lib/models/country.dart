// lib/models/country.dart

class Country {
  final String nom;
  final String capitale;
  final String population;
  final String superficie;
  final String langue;
  final String drapeau;

  Country({
    required this.nom,
    required this.capitale,
    required this.population,
    required this.superficie,
    required this.langue,
    required this.drapeau,
  });

  // Constructeur depuis JSON
  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      nom: json['nom'],
      capitale: json['capitale'],
      population: json['population'],
      superficie: json['superficie'],
      langue: json['langue'],
      drapeau: json['drapeau'],
    );
  }

  // Conversion vers JSON
  Map<String, dynamic> toJson() {
    return {
      'nom': nom,
      'capitale': capitale,
      'population': population,
      'superficie': superficie,
      'langue': langue,
      'drapeau': drapeau,
    };
  }
}