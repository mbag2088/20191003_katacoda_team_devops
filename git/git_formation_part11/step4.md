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
 `git add script_v2.1.0.sh `{{execute T2}}
 
 Commiter la nouvelle release dans le Repository local 
 
 `git commit -m "ajout du script_v2.1.0.sh repo local "`{{execute T2}}
   
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

Lister le tag en cours
 `git tag`{{execute T2}}

 Regarder les logs, vous constater que nous avons fusionné les release -->  dans la branche de développement & master 
 `git flow log`{{execute T2}}


Consulter à présent les branches actives 
  `git branch`{{execute T2}}


 
 A ce stade, vous pouver push le tag de la release sur le repo dsistant 
 `git push --tags`{{execute T2}}

Puis vous pouver la pousser sur le repo Central
 `git push origin master`{{execute T2}}
  
  
Lister le contenu d'une release  v2.1.0, qui accompagera la livraison pour l'équipe de Production
pour commencer (1) lancer la liste des tags et commits des Releases
  `git ls-remote --tags origin`{{execute T3}}

                (2) noter le commit id de la release v2.1.0 
  `git ls-remote --tags origin | grep v2.1.0$`{{execute T3}}

                (3) La commande définitive est prête! lancez là!:
  `git ls-remote --tags origin | grep v2.1.0$ | awk '{print "git ls-tree --name-only -r "$1}'|sh`{{execute T3}}


 #### `Le contenu des releases peut également être consulté sur le Repository Central avant la mise en production`  
 
 Vérifier la connexion au `Repository Central GIT  (remote)`
 
`cd repocentral`{{execute T1}}

 
 Lister le contenu d'une release  v2.1.0, qui accompagera la livraison pour l'équipe de Production
pour commencer (1) lancer la liste des tags et commits des Releases
  `git ls-remote --tags origin`{{execute T3}}

                (2) noter le commit id de la release v2.1.0 
  `git ls-remote --tags origin | grep v2.1.0$`{{execute T3}}

                (3) La commande définitive est prête! lancez là!:
  `git ls-remote --tags origin | grep v2.1.0$ | awk '{print "git ls-tree --name-only -r "$1}'|sh`{{execute T3}}
 
#### L'équipe de "Production" reçoit la livraison des Releases

Importer les releases  v2.1.0 etv3.1.0
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



Lister les fichiers que contient la release 2.1.0
pour commencer (1) relancer la liste des tags et leurs commits
  `git ls-remote --tags origin`{{execute T3}}

                (2) noter le commit id de la release v2.1.0 
  `git ls-remote --tags origin | grep v2.1.0$`{{execute T3}}

                (3) La commande définitive est prête! lancez là!:
  `git ls-remote --tags origin | grep v2.1.0$ | awk '{print "git ls-tree --name-only -r "$1}'|sh`{{execute T3}}


Lister les fichiers que contient la release 2.1.0
  `git show v2.1.0^{tree}`{{execute T3}}

Mettre la release v2.1.0  dans une branche parallèlè séparée
  `git checkout -b branch_v2.1.0 v2.1.0`{{execute T3}}

Lister les fichiers de la release v2.1.0 récupèrés dans la branche paralèlle
  `ls`{{execute T3}}


Lister la branche créée
  `git branch`{{execute T3}}




aaaaaaaaaaaaaaaaa


Vérifier que le Git Flow est bien présent
 `git flow config`{{execute T3}}


  

 Recupèrer les tags
  `git fetch origin 'refs/tags/v2.1.0'`{{execute T3}}



Consulter une release 
  `git show v2.1.0`{{execute T3}}

Consulter son commit correspondant
  `git log `{{execute T3}}

aaaaaaaaaaaaaa    




Importer la feature
  `git flow release track v2.1.0`{{execute T3}}

ou Importer la release
  `git pull origin release/v2.1.0`{{execute T3}}

 
 Regarder les logs 
  `git flow log`{{execute T3}}
  

 #### `Repository Central`  
 
 Vérifier la connexion au `Repository Central GIT  (remote)`
 
`cd repocentral`{{execute T1}}

 Constater que la branche release est bien centralisé
 `git branch`{{execute T1}}
