# double_pendulum_analyzer
[![Julia](https://img.shields.io/badge/Julia-1.6.0-orange.svg)](https://julialang.org/)
[![License](https://img.shields.io/badge/Licence-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![CI](https://github.com/[votre_github_username]/double_pendulum_analyzer/actions/workflows/ci.yml/badge.svg)](https://github.com/[votre_github_username]/double_pendulum_analyzer/actions/workflows/ci.yml)

## Description détaillée

L'analyse de la chaos d'un double pendulum est un problème complexe qui nécessite une approche multidisciplinaire. Ce projet propose une implémentation en Julia pour analyser la dynamique d'un double pendulum et détecter les phénomènes de chaos. Le modèle du double pendulum est basé sur les équations de mouvement classiques, tandis que la détection de la chaos utilise des techniques d'analyse fréquentielle.

## Fonctionnalités

* Modèle du double pendulum basé sur les équations de mouvement classiques
* Détection de la chaos à l'aide d'analyse fréquentielle
* Affichage des résultats sous forme de graphiques
* Simulations paramétrables pour étudier les effets des différentes variables

## Installation

Pour installer ce projet, vous avez besoin de Julia 1.6.0 ou supérieur. Vous pouvez télécharger Julia sur le site officiel <https://julialang.org/downloads/>. Une fois Julia installé, vous pouvez cloner ce dépôt en utilisant Git.

```bash
git clone https://github.com/[votre_github_username]/double_pendulum_analyzer.git
```

## Usage avec exemples

Pour lancer le projet, vous pouvez utiliser la commande suivante :

```bash
julia src/main.jl
```

Cela lancera la simulation par défaut avec les paramètres définis dans le fichier `data/parameters.jl`. Vous pouvez modifier ces paramètres pour étudier les effets des différentes variables.

## Architecture du projet

Le projet est composé de plusieurs fichiers et dossiers :

* `src/main.jl`: Fichier principal qui lance la simulation
* `src/pendulum.jl`: Modèle du double pendulum basé sur les équations de mouvement classiques
* `src/chaos_detection.jl`: Détection de la chaos à l'aide d'analyse fréquentielle
* `src/plotting.jl`: Affichage des résultats sous forme de graphiques
* `data/parameters.jl`: Fichier de paramètres pour les simulations
* `test/test_chaos_detection.jl`: Tests pour la détection de la chaos

## Contribuer

Pour contribuer à ce projet, vous pouvez suivre les étapes suivantes :

1. Cloner ce dépôt en utilisant Git.
2. Créer une branche pour votre nouvelle fonctionnalité.
3. Modifier les fichiers nécessaires pour implémenter votre nouvelle fonctionnalité.
4. Exécuter les tests pour vérifier que tout fonctionne correctement.
5. Commiter vos modifications et créer une pull request pour que les autres développeurs puissent les revérifier.

## Licence

Ce projet est sous licence MIT. Vous pouvez utiliser, modifier et distribuer ce code sous les conditions de la licence MIT.