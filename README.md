# **Projet : Petits programmes de mise en chauffe (en groupe)**
Comme son nom l'indique, nous allons concevoir, réaliser et tester quelque programmes issue notamment de certains notion comme :  
  - des théories mathématiques,
  - de cryptage de données (chiffrement)
  - d'algorithme de trading
  - des comptages de mots dans l'oeuvre de shakespeare

# Pour commencer
Nous aurons besoin de gemfile permettant de produire ou d'excécuter certains fonctionnaltés, mais également de tester afin de pouvoir créer notre code en se basant sur la méthode Test Driven Development. Notre gemfile du jour sera comme suit:

> source "https://rubygems.org"
> ruby '2.7.1'
> gem 'rubocop', '~> 0.57.2'
> gem 'pry' gem 'rspec'

L'installation et l'initialisation se fera avec l'excécution de ces commandes successives :
- $ bundle install
- $ rspec -- init

Après cela, nous arrangerons notre dossier en séparant les programmes test,  des codes sources, ainsi que les fichiers de données.

# Démarrage

par défaut, les données et les résultats attendues sont pré-enregistrées dans les programmes de test de fonctionnement de celle-ci. De ce fait, nos programmes et ou code sources ont été écrit selon les résultat que l'on voulait obtenir. Ce qui impliquera, si nécéssaire de pouvoir les modifier selon les besoin de l'utilisateur.

Pour vérifier le bon fonctionnalité du code et/ou du programme, vous pouvez tapez sur votre terminal (ctrl + alt + T : touche de raccourci) l'un des codes suivant :
First code :
```sh
$ rspec # qui excecutera tous les programmes de test
```

Second code :
```sh
$ rspec spec/nom_pgm_tester  # pour tester un programme spécifique
```

Notons qu'après l'excecution du programme un message devrait apparaître : soit il nous dit que les test effectué ont été terminé avec succé, soit il nous affiche un ou des codes erreurs selon le disfonctionnement rencontré par le programme.

Spécifions ici que nous avons concocté cinq (5) programmes test dont les résultats attendues sont de : - pouvoir calculer la somme des nombres entiers multiple de 3 et de 5 inférieur ou égal au nombre indiquer à l'entré de la méthode, - crypter des chaînes de caractères par l'utilisation de chiffrement de decalage avec le code ASCII, - trouver le meilleure jour d'achat et de revente d'un devise à l'aide d'une estimation de prix donné, - Compter le nombre de mot (voire même un fichier texte) fourni dans le programme à partir d'un dictionnaire prédefini.

# Auteurs
Voici la liste des membres ayant participé à la réalisation de ce projet :
 - RAMAHATAFANDRY Fanomezana Nirina : https://github.com/FaSa1316 
 - RANDIMBIARILANTO  Mino : https://github.com/MinoRandy
 - RABEMIARINTSOA Anny Zo : https://github.com/Annyzo
 - Rabearimanana Tolotry ny Avo : https://github.com/Tolotra0977
 - RIANJHARINELINA Ny Toky Fitiavana : https://github.com/ny-toky-fitiavana02
- ANDRIANASOLO Tolotra judicael :  https://github.com/Tolotra-Judicael


License
----
**Free Software, Heaven Yeah!**
