#### L'équipe de "Développement" utilise le Git Glow
 
Lors du précédent cours, vous avez  appris à initier une release dans un git Flow,
Vérifier que le Git Flow est bien présent
 `git flow config`{{execute T2}}

 Démarrer une nouvelle Release  "2.1.0"
 `git flow release start "v2.1.0"`{{execute T2}}
 
 Vérifier la création de la release
 `git flow release list`{{execute T2}}

 Créer un fichier script_12.sh
 `echo "printf 'Ceci est le script de la nouvelle fonctionalité \n'" > script_v2.1.0.sh;cat script_v2.1.0.sh`{{execute T2}}
 
 Ajouter le fichier dans la "Staging Area" (cache)
 `git add script_v2.1.0.sh`{{execute T2}}
 
 Créer un sous répertoire 'log'
 `mkdir log`{{execute T2}}
 
 Créer un fichier 'log/readmev2.1.0'
 `touch log/readmev2.1.0`{{execute T2}}
 
  Ajouter le fichier dans la "Staging Area" (cache)
 `git add log/readmev2.1.0`{{execute T2}}
 
 Commiter la nouvelle release dans le Repository local 
  `git commit -m "ajout fichiers de la v2.1.0 "`{{execute T2}}
   
 Vérifier le nouveau commmit
 `git log --oneline`{{execute T2}}
 
 Publier le Git Flow 
 `git flow release publish "v2.1.0"`{{execute T2}}
 
 ```
 _Répondre: yes
  ```
 
 Regarder les logs 
 `git flow log`{{execute T2}}
 
 Terminer le Git Flow en cours 
 `git flow release finish "v2.1.0"`{{execute T2}}

 ```
 * Renseigner la ligne version "v2.1.0" dans chacun des fichiers textes (touch ":wq!" pour sortir de chaque fichier)  
 ``` 

Lister les tags en cours
 `git tag`{{execute T2}}

 Regarder les logs, vous constater que nous avons fusionné les release -->  dans la branche de développement & master 
 `git flow log`{{execute T2}}


Consulter à présent les branches actives 
  `git branch`{{execute T2}}


 
 A ce stade, vous pouver push le tag de la release sur le repo dsistant 
 `git push --tags`{{execute T2}}

Puis vous pouver la pousser sur le repo Central
 `git push origin master`{{execute T2}}
  

Vous pouvez -à tout moment- lister le contenu d'une release, afin de le communiquer à l'équipe d'exploit avant la mise en Production 
pour cela:

                (1) lancer la liste des tags et commits des Releases 
  `git ls-remote --tags origin`{{execute T2}}

                (2) noter le commit id de la release v2.1.0 
  `git ls-remote --tags origin | grep v2.1.0$`{{execute T2}}

                (3) La commande définitive est prête! lancez là!:
  `git ls-remote --tags origin | grep v2.1.0$ | awk '{print "git ls-tree --name-only -r "$1}'|sh`{{execute T2}}


 
 
#### L'équipe de "Production", livre la Releases "v2.1.0" en production

Importer la releases  v2.1.0 à disposition
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



Vous pouvez à tout moment lister les fichiers de la release v2.1.0 que vous venez d'importer

Lister les fichiers que contient la release 2.1.0
  `git show v2.1.0^{tree}`{{execute T3}}

Vous pouvez importer la release "v2.1.0"  dans une nouvelle branche séparée
  `git checkout -b branch_v2.1.0 v2.1.0`{{execute T3}}

Lister les fichiers de la release "v2.1.0" importés 
  `ls`{{execute T3}}

Lister la branche créée
  `git branch`{{execute T3}}

Vous pouvez revenir sur la branche master
  `git branch`{{execute T3}}
