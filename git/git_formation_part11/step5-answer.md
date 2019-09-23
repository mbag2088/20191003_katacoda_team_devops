#### Correction
#### L'équipe de "Développement" utilise le Git Glow
 
Lors du précédent cours, vous avez  appris à initier une release dans un git Flow,
Vérifier que le Git Flow est bien présent
 `git flow config`{{execute T2}}

 Démarrer une nouvelle Release  "3.0.0"
 `git flow release start "v3.0.0"`{{execute T2}}
 
 Vérifier la création de la release
 `git flow release list`{{execute T2}}

 Créer un fichier script_300.sh.sh
 `echo "printf 'Ceci est le script de la nouvelle fonctionalité \n'" > script_v300.sh;cat script_v300.sh`{{execute T2}}
 
 Ajouter le fichier dans la "Staging Area" (cache)
 `git add script_v300.sh`{{execute T2}}
 
 Créer un sous répertoire 'log'
 `mkdir log`{{execute T2}}
 
 Créer un fichier 'log/readmev300'
 `touch log/readmev300`{{execute T2}}
 
  Ajouter le fichier dans la "Staging Area" (cache)
 `git add log/readmev300`{{execute T2}}
 
 Commiter la nouvelle release dans le Repository local 
  `git commit -m "ajout fichiers de la v3.0.0 "`{{execute T2}}
   
 Vérifier le nouveau commmit
 `git log --oneline`{{execute T2}}
 
 Publier le Git Flow 
 `git flow release publish "v3.0.0"`{{execute T2}}
 
 ```
 _Répondre: yes
  ```
 
 Regarder les logs 
 `git flow log`{{execute T2}}
 
 Terminer le Git Flow en cours 
 `git flow release finish "v3.0.0"`{{execute T2}}

 ```
 * Renseigner la ligne version "v3.0.0" dans chacun des fichiers textes (touch ":wq!" pour sortir de chaque fichier)  
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

Lister les fichiers que contient la release 3.0.0
  `git show v3.0.0^{tree}`{{execute T2}}
  
  
 
#### L'équipe de "Production", livre la Releases "v3.0.0" en production

Importer la releases  v3.0.0 à disposition
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



Vous pouvez à tout moment lister les fichiers de la release v3.0.0 que vous venez d'importer

Lister les fichiers que contient la release 3.0.0
  `git show v3.0.0^{tree}`{{execute T3}}

Vous pouvez aussi importer la release "v3.0.0"  dans une branche séparée
  `git checkout -b branch_v3.0.0 v3.0.0`{{execute T3}}

Lister les fichiers de la release "v3.0.0" importés 
  `ls`{{execute T3}}

Lister la branche créée
  `git branch`{{execute T3}}

Après avoir consulté la release: revenir sur la branche master
  `git branch`{{execute T3}}