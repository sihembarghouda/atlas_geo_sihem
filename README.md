# Atlas Géographique 🌍

Application mobile Flutter présentant un atlas géographique interactif permettant de consulter les informations de différents pays du monde.

## 📱 Description

Cette application permet aux utilisateurs de :
- Parcourir une liste de pays avec leurs drapeaux
- Consulter des informations détaillées sur chaque pays (capitale, population, superficie, langue)
- Naviguer facilement entre les différents écrans
- Accéder à une page "À propos" avec les informations de l'application

## 🏗️ Architecture de l'application

### Structure des dossiers

```
lib/
├── main.dart                    # Point d'entrée de l'application
├── models/
│   └── country.dart            # Modèle de données pour les pays
├── screens/
│   ├── welcome_page.dart       # Écran d'accueil
│   ├── countries_page.dart     # Liste des pays avec Drawer
│   ├── country_detail_page.dart # Détails d'un pays
│   └── about_page.dart         # Page À propos
└── data/
    └── countries_data.dart     # Données statiques des pays

assets/
├── images/
│   ├── welcome_globe.png       # Image d'accueil
│   └── flags/                  # Drapeaux des pays
│       ├── tunisia.png
│       ├── france.png
│       ├── usa.png
│       └── ...
```

## 📋 Fonctionnalités

### Écran 1 : Page d'Accueil (WelcomePage)
- AppBar avec titre "Atlas Géographique"
- Image de bienvenue (globe terrestre)
- Texte de bienvenue
- Bouton "Explorer" pour accéder à la liste des pays

### Écran 2 : Page Principale (CountriesPage)
- AppBar avec titre "Liste des Pays" et icône menu
- Drawer (menu latéral) contenant :
  - En-tête avec icône
  - Option "Accueil" (retour à WelcomePage)
  - Option "À propos" (navigation vers AboutPage)
  - Option "Quitter" (avec confirmation)
- ListView avec cartes cliquables
- Chaque carte affiche : nom du pays, capitale et drapeau miniature

### Écran 3 : Détails du Pays (CountryDetailPage)
- AppBar avec bouton retour et nom du pays
- Drapeau en grand format
- Informations détaillées :
  - Capitale
  - Population
  - Superficie
  - Langue officielle
- Bouton de retour à la liste

### Écran 4 : Page À propos (AboutPage)
- Informations sur l'application
- Version
- Fonctionnalités
- Informations du développeur

## 🚀 Installation

### Prérequis
- Flutter SDK (version 3.0.0 ou supérieure)
- Dart SDK
- Un éditeur de code (VS Code, Android Studio, etc.)

### Étapes d'installation

1. **Cloner le repository**
```bash
git clone https://github.com/votre-username/atlas_geo_votre_prenom.git
cd atlas_geo_votre_prenom
```

2. **Installer les dépendances**
```bash
flutter pub get
```

3. **Ajouter les assets**
   - Créez les dossiers `assets/images/` et `assets/images/flags/`
   - Ajoutez l'image `welcome_globe.png` dans `assets/images/`
   - Téléchargez les drapeaux depuis [countryflags.com](https://www.countryflags.com)
   - Placez les drapeaux dans `assets/images/flags/`

4. **Lancer l'application**
```bash
flutter run
```

## 📦 Dépendances

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2
```

## 🎨 Design

L'application utilise :
- Material Design 3
- Thème de couleur : Bleu (Blue Accent)
- Cartes avec ombres et coins arrondis
- Dégradés de couleur
- Icônes Material

## 📊 Modèle de données

```dart
class Country {
  final String nom;
  final String capitale;
  final String population;
  final String superficie;
  final String langue;
  final String drapeau;
}
```

## 🌐 Pays inclus

L'application contient des informations sur 10 pays :
1. Tunisie
2. France
3. États-Unis
4. Japon
5. Allemagne
6. Brésil
7. Égypte
8. Australie
9. Canada
10. Maroc

## 📝 Notes de développement

- **Navigation** : Utilisation de `Navigator.push()` pour la navigation entre écrans
- **State Management** : StatelessWidget (pas de gestion d'état complexe nécessaire)
- **Assets** : Images locales stockées dans le dossier assets
- **Responsive** : Interface adaptative avec SingleChildScrollView
- **Error Handling** : Gestion des erreurs de chargement d'images avec errorBuilder

## 🔧 Améliorations possibles

- Ajouter plus de pays
- Implémenter une fonction de recherche
- Ajouter des cartes géographiques
- Intégrer une API pour des données en temps réel
- Ajouter des favoris
- Implémenter le mode sombre
- Ajouter des informations supplémentaires (devise, fuseau horaire, etc.)

## 👨‍💻 Auteur

**[Votre Nom]**
- Projet réalisé dans le cadre de l'examen pratique de Développement Mobile Cross Plateforme
- Enseignant : Wahid Hamdi

## 📄 Licence

Ce projet est réalisé dans un cadre éducatif.

## 📸 Captures d'écran

*(Ajoutez vos captures d'écran ici)*

## 🙏 Remerciements

- Enseignant : Wahid Hamdi
- [Country Flags](https://www.countryflags.com) pour les images de drapeaux
- Communauté Flutter pour la documentation

---

**Date de création** : Novembre 2025  
**Version** : 1.0.0
