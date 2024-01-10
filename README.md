# Grid Mockups - Backend

## **Description**

Le projet **grid mockups** stocke et enregistre une courte vidéo (en format .webm) défilant de haut en bas un site d'internet ou une réalisation personnelle. 

## 📦 **Installation**

### **Dépendances**

Pour installer les dépendances du projet :

```bash
npm i
# ou avec yarn
yarn
```

## 🪄 **Usage**

Pour lancer l'application backend en mode **production** :

```bash
npm run start
# ou avec yarn
yarn start
```

Pour lancer l'application backend en mode **développement** :

```bash
npm run dev
# ou avec yarn
yarn dev
```

## Configurer la base de données

Installer **postgresql**, puis ajouter un utilisateur avec un mot de passe :

```sh
CREATE USER votreNomUtilisateur WITH PASSWORD 'votreMotDePasse';
```

### Exemple

```sh
# Pour générer un mot de passe de 14 charactères
# (Debian, ubuntu : sudo apt install pwgen)
pwgen -s -1 14 
rjwUnXHXp5MO8X

# Connecter à postgresql
sudo -i -u postgres psql

# Créer un utiliseur
CREATE USER griduser WITH PASSWORD 'rjwUnXHXp5MO8X';
```

Ensuite, créer une base de données associée à cet utilisateur créé :

```sh
CREATE DATABASE votreNomDeBaseDeDonnees OWNER votreNomUtilisateur;
```

### Exemple 

```sh
# Connecter à postgresql
sudo -i -u postgres psql

# Créer une base de données associées à un utilisateur
CREATE DATABASE gridmockups OWNER griduser;
```

Tester l'authentification à votre base de données avec la commande :
```sh
psql --host 127.0.0.1 --port 5432 --username griduser --dbname gridmockups -W
```

#### Configurer sqitch (manager de base de données)

Pour utiliser sqitch copier le fichier d'exemple et configurer le paramètre **target** pour pointer sur votre serveur postgresql.

```sh
cp sqitch.conf.example sqitch.conf

# Editer la configuration (exemple avec l'ide nano)
nano sqitch.conf 
```

Dans le fichier **squitch.conf** changez les paramètres correspondant avec vos informations (user, passwords, etc....) :

Avec l'exemple de l'utilisateur et base de données créés ci-dessus cela donne :

```text
[core]
	engine = pg
	top_dir = data
	# plan_file = migrations/sqitch.plan
[engine "pg"]
	target = db:pg://griduser:rjwUnXHXp5MO8X@127.0.0.1:5432/gridmockups
```

## Tester l'API

Vous pouvez tester l'API client avec le logiciel [Bruno](https://www.usebruno.com/) alternative opensource et multiplateforme à Postman et Insomnia.

L'ensemble des tests API se trouvent dans le dossier du projet : **bruno-api-grid-mockup**.

# Références

   * [Database URI](https://github.com/libwww-perl/uri-db/)