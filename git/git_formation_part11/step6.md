#### L'équipe de "Développement" (1), commence à faire une nouvelle version v4.0.0 et la mettra à disposition d'une autre équipe 
 
Initier la version v4.0.0


Vérifier que le Git Flow est bien présent
 `git flow config`{{execute T2}}

 Démarrer une nouvelle Release  "v4.0.0"
 `git flow release start "v4.0.0"`{{execute T2}}
 
 Vérifier la création de la release
 `git flow release list`{{execute T2}}

 Créer un fichier script_v400.sh
 `echo "printf 'Ceci est le script de la nouvelle fonctionalité v4.0.0  \n'" > script_v400.sh;cat script_v400.sh`{{execute T2}}
 
 Ajouter le fichier dans la "Staging Area" (cache)
 `git add script_v400.sh`{{execute T2}}
 
 Créer un sous répertoire 'log'
 `mkdir -p log`{{execute T2}}
 
 Créer un fichier 'log/readme_v400'
 `echo "readme v4.0.0" > log/readme_v400`{{execute T2}}
 
  Ajouter le fichier dans la "Staging Area" (cache)
 `git add log/readme_v400`{{execute T2}}
 
 Commiter la nouvelle release dans le Repository local 
  `git commit -m "ajout fichiers de la v4.0.0 "`{{execute T2}}
   
 Vérifier le nouveau commmit
 `git log --oneline`{{execute T2}}
 
 Publier le Git Flow 
 `git flow release publish "v4.0.0"`{{execute T2}}
 
 ```
 _Répondre: yes
  ```
 
 Regarder les logs 
 `git flow log`{{execute T2}}
 
 
 
#### L'équipe de développement (2), récupère votre release "v4.0.0" pour la faire évoluer

A présent vous allez importer "tracker" (importer) la release  développée par l'autre équipe, et la faire évoluer

Importer la release v4.0.0
  `git flow release track "v4.0.0"`{{execute T3}}

ou seconde méhthode pour Importer la release
  `git pull origin release/v4.0.0`{{execute T3}}


 
 Regarder les logs 
  `git flow log`{{execute T3}}






Importer la releases  v4.0.0 à disposition
  `git pull --rebase origin master`{{execute T3}}
 ```
 _Répondre: yes
  ```

Consulter les tags distants 
  `git ls-remote --tags origin`{{execute T3}}



Recupèrer les tags développés
  `git pull origin --tags`{{execute T3}}


Lister les tags
  `git tag`{{execute T3}}



Vous pouvez à tout moment lister les fichiers de la release v4.0.0 que vous venez d'importer

Pour lister les fichiers que contient la release 3.0.0

   Commande n°1
   
  `git show v4.0.0^{tree}`{{execute T3}}
  
  ou 
  Commande n°2  (arborescence complète)
  
  `git ls-remote --tags origin | grep v4.0.0$ | awk '{print "git ls-tree --name-only -r "$1}'|sh`{{execute T3}}

Vous pouvez aussi importer la release "v4.0.0"  dans une branche temporaire, paralèlle

  `git checkout -b branch_v4.0.0 v4.0.0`{{execute T3}}

Lister les fichiers de la release "v4.0.0"  

  `ls`{{execute T3}}

Lister la branche créée

  `git branch`{{execute T3}}

Après avoir consulté la release: revenir sur la branche master

  `git checkout master`{{execute T3}}
