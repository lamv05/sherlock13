# 🕵️ Sherlock 13 - Projet OS User

## 🎯 Présentation du jeu

**Sherlock 13** est un jeu de déduction pour 4 joueurs, où le but est de découvrir quel personnage est le criminel parmi 13 suspects, chacun lié à 2 ou 3 symboles.

### 🔧 Déroulement de la partie

- 13 cartes sont mélangées.
- Chaque joueur reçoit 3 cartes.
- La 13ème carte restante est le **criminel** à démasquer.

Les joueurs jouent à tour de rôle et peuvent effectuer **une des trois actions suivantes** :

- 🔎 **Demander à tous les joueurs** s’ils possèdent un symbole donné (réponse collective : oui ou non).
- 🧮 **Demander à un joueur spécifique** combien de fois il possède un symbole donné.
- 🎯 **Accuser un suspect** d’être le criminel.

> ⚠️ En cas d’accusation incorrecte, le joueur est éliminé (mais continue à répondre aux questions).

Le joueur qui devine correctement l’identité du criminel **remporte la partie**.

---

## 🚀 Lancement du jeu

### 1. Lancer le serveur

```bash
./server <port>
```

Exemple :

```bash
./server 32000
```

### 2. Lancer un client

```bash
./sh13 <ipServeur> <portServeur> <ipClient> <portClient> <nomJoueur>
```

Exemple :

```bash
./sh13 127.0.0.1 32000 127.0.0.1 32001 Alice
```

> 💡 Répéter cette étape pour chaque joueur.

### 3. Se connecter

Une fois la fenêtre graphique du client ouverte, cliquer sur le bouton **“Connect”** pour rejoindre la partie.

---

## 🎮 Interface et actions

Quand c’est le tour d’un joueur, un bouton **"Go"** s’affiche, permettant de valider une action. Trois choix sont possibles :

- 🖱️ **Demander à tous les joueurs** s’ils ont un symbole → cliquer sur le symbole voulu -> oui = 42, non = 0
- 📌 **Demander à un joueur spécifique** combien de symbole il a → sélectionner le joueur + le symbole concerné.
- 🚨 **Accuser un suspect** → cliquer sur le nom du personnage en bas à gauche de l’interface.

---

## 🛠️ Dépendances


Le programme utilise les bibliothèques suivantes :

- `SDL2`
- `SDL2_image`
- `SDL2_ttf`
- `pthread` (pour la gestion des threads)
- Bibliothèques standards C pour le réseau :
  - `unistd.h`
  - `stdlib.h`
  - `string.h`
  - `stdio.h`
  - `sys/types.h`
  - `sys/socket.h`
  - `netinet/in.h`
  - `netdb.h`
  - `arpa/inet.h`

### Installation (Debian/Ubuntu)

```bash
sudo apt install libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev build-essential
```

## 🧱 Compilation

Le projet utilise un **Makefile** pour compiler les exécutables.

### 🔧 Commande de compilation

```bash
make
```

Cela générera deux exécutables :
- `sh13` : le client avec interface graphique
- `server` : le serveur central du jeu

Pour nettoyer les fichiers compilés :

```bash
make clean
```

## 📁 Contenu du dépôt

Voici les fichiers principaux présents dans le dépôt :

- `server.c` : Code source du serveur
- `sh13.c` : Code source du client
- `Makefile` : Fichier de compilation
- `README.md` : Documentation du projet
- `img/` : Dossier contenant les images utilisées
- `rapport.pdf` : rapport du projet


## 🧑‍💻 Auteurs

Ce projet a été réalisé dans le cadre du module OS User

---
