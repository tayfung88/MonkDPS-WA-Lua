# TayMonk[Afenar] - WoW WeakAuras pour Moine DPS (TWW - 11.0.5)

TayMonk est un ensemble d'auras WeakAuras personnalisées pour les moines DPS (spécialisation Windwalker) dans World of Warcraft. 
Basé sur le bloc d'auras développé par Afenar, ce projet adapte et enrichit les fonctionnalités pour optimiser le DPS de la classe en version 11.0.5.

## Capture d'écran 

![WA Screen2](MonkDPS-WA-Lua/Images/monk_shado-pan_display.png) ![WA Screen1](MonkDPS-WA-Lua/Images/monk_celestial_display.png) 

## Structure du projet

Le groupe principal **TayMonk** contient plusieurs sous-groupes pour une meilleure organisation :

- **Proc** : Affiche dynamiquement les procs importants avec des icônes ajustées en taille.
- **Core** : Suivi des compétences de base du moine DPS.
- **Utility** : Suivi des sorts utilitaires (interruption, capacités défensives, etc.).
- **Resources** : Indicateurs de ressources (énergie, points de combo, etc.).

## Fichiers disponibles

- `TayMonk.json` : Export complet du groupe principal.
- `Proc/Proc.json` : Sous-groupe pour les procs.
- `Core/Core.json` : Sous-groupe pour les compétences principales.
- `Utility/Utility.json` : Sous-groupe pour les capacités utilitaires.
- `Resources/Resources.json` : Suivi des ressources.

## Installation

Deux options pour installer les auras :

### Option 1 : Installer tout le groupe TayMonk
1. Copiez le JSON du fichier TayMonk.json depuis ce dépôt.
2. Ouvrez WeakAuras dans le jeu (/wa).
3. Cliquez sur Importer, puis collez le contenu du JSON dans la fenêtre d'importation.
4. Toutes les auras et sous-groupes (Proc, Core, Utility, Resources) seront importés.

### Option 2 : Installer un sous-groupe spécifique
Si vous ne souhaitez importer qu'une partie des auras, vous pouvez le faire individuellement :

Proc : Copiez le JSON du fichier Proc/Proc.json pour importer uniquement les procs importants.
Core : Copiez le JSON du fichier Core/Core.json pour les compétences principales du moine DPS.
Utility : Copiez le JSON du fichier Utility/Utility.json pour les sorts utilitaires.
Resources : Copiez le JSON du fichier Resources/Resources.json pour suivre uniquement vos ressources (énergie, points de combo, etc.).

Étapes pour importer un sous-groupe :
1. Copiez le JSON correspondant au sous-groupe que vous souhaitez installer.
2. Ouvrez WeakAuras dans le jeu (/wa).
3. Cliquez sur Importer, puis collez le contenu du JSON dans la fenêtre d'importation.

## Détails techniques

### Groupe principal : TayMonk
Ce groupe est conçu pour centraliser les informations nécessaires pour optimiser les performances d’un moine DPS.

### Sous-groupes dynamiques
Les sous-groupes `Proc`, `Core` et `Utility` utilisent des configurations dynamiques pour ajuster la taille et l'affichage en fonction du nombre d'icônes actives.

### Scripts et conditions personnalisées
Certains éléments incluent des scripts Lua personnalisés qui gèrent la disposition et l'animation des auras :

Gestion des procs : Les scripts, comme ceux dans Proc.lua, organisent dynamiquement les icônes en fonction du nombre de procs actifs. Cela permet de gérer l'affichage de manière fluide, avec des ajustements d'espacement et de position en fonction du nombre d'éléments actifs.
Animation des ressources : Dans des fichiers comme Core.lua et Utility.lua, des scripts ajustent la position des icônes en fonction des sorts disponibles. Ils permettent aussi d'ajuster l'affichage en fonction des seuils critiques, en offrant une disposition dynamique et réactive.

Ces scripts assurent que l'interface reste claire et fonctionnelle en fonction des changements dans les ressources et les procs du joueur.

---

## Licence

Ce projet est sous licence **MIT License**.
Vous êtes libre de modifier, distribuer et utiliser ce code, tant qu'une copie de cette licence est incluse dans toute distribution.
