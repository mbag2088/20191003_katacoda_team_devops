#### Repo Central
 
 Vérifier la connexion au `Repository Central GIT  (remote)`
 
`cd repocentral`{{execute T1}}


#### VM2 `équipe 1` Développe sur son Repository Local et utilise le Git Glow
 
En tant que développeur, vous allez créer une nouvelle release, puis apprendre à la publier. 

 Démarrer un Work Flow pour créer la première Release  
 `git flow release start "v1.2.0"`{{execute T2}}
 
 Vérifier la création de la Feature
 `git flow release list`{{execute T2}}

 Créer un fichier script_12.sh
 `echo "printf 'Ceci est le script de la nouvelle fonctionalité \n'" > script_12.sh;cat script_12.sh`{{execute T2}}
 
 Ajouter le fichier dans la "Staging Area" (cache)
 `git add script_12.sh `{{execute T2}}
 
 Commiter la nouvelle release dans le Repository local 
 
 `git commit -m "ajout du sscript_12.sh repo local "`{{execute T2}}
   
 Vérifier le nouveau commmit
 `git log --oneline`{{execute T2}}
 
 Publier le Git Flow 
 `git flow release publish "v1.2.0"`{{execute T2}}
 
 ```
 _Répondre: yes
  ```
 
 Regarder les logs 
 `git flow log`{{execute T2}}
 
 Terminer le Git Flow en cours 
 `git flow release finish "v1.2.0"`{{execute T2}}

 ```
Renseigner la version de la Release: dans chaque fichier texte  puis enregistre et sortir du fichier
 ``` 

 Regarder les logs, vous constater que nous avons fusionné les release -->  dans la branche de développement & master 
 `git flow log`{{execute T2}}


Consulter à présent les branches actives 
  `git branch`{{execute T2}}


Vous pouver Tagger la Release
 `git push --tags`{{execute T2}}

Puis vous pouver la pousser sur le repo Central
 `git push origin master`{{execute T2}}
  
  
  
 
 #### (VM1) Constater que le développement (script n°2) n'a pas encore été "pushé" sur le `Repository Central`  
 Constater que la branche feature est bien centralisé
 `git branch`{{execute T1}}



#### `Equipe 2` développe sur son Repository Local le script n°3  (VM3)

Initialiser le Git Flow
 `git flow init`{{execute T3}}
 ```
How to name your supporting branch prefixes?
Feature branches? [feature/]
Bugfix branches? [bugfix/]
Release branches? [release/]
Hotfix branches? [hotfix/]
Support branches? [support/]
Version tag prefix? []
Hooks and filters directory? [/home/git/.git/hooks]
 ``` 

Importer la feature
  `git flow feature track v1.2.0`{{execute T3}}

ou Importer la feature
  `git pull origin release/v1.2.0`{{execute T3}}


 
 Regarder les logs 
  `git flow log`{{execute T3}}






  
  Lancer un Raffraichissement `push` sur le repo Distant (Central)
   `git push origin master`{{execute T3}}
  
  **Sur la VM2 equiep 2  terminer la feature et la mettre dans developp 
  
 `git flow feature finish v1.2.0`{{execute T2}}
 
 Checker la disparition de la branche feature
  `git branch`{{execute T2}}
 
