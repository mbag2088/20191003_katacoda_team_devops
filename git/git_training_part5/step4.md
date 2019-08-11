#### (VM1)  
 
 Vérifier la connexion au `Repository Central GIT  (remote)`
 
`cd repocentral`{{execute T1}}


#### VM2 `équipe 1` Développe sur son Repository Local et utilise le Git Glow
 
Initialiser le Git Flow
 `git flow init`{{execute T2}}
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
 
 Démarrer le Work Flow pour les featues
 `git flow feature start featureform`{{execute T2}}
 
 Vérifier la création de la Feature
 `git flow feature`{{execute T2}}

`En tant que première équipe`, vous allez effectuer vos développements. Et les commiter en local.  

 Créer un fichier script_vm2_1.sh
 `echo "printf 'Ceci est le script 1 \n'" > script_vm2_1.sh;cat script_vm2_1.sh`{{execute T2}}
 
 Ajouter le fichier dans la "Staging Area" (cache)
 `git add script_vm2_1.sh `{{execute T2}}
 
 Commmiter `valider` le nouveau fichier: dans le Repository local 
 
 `git commit -m "ajout du script_vm2_1.sh repo local VM2"`{{execute T2}}
   
 Vérifier le nouveau commmit
 `git log --oneline`{{execute T2}}
 

 
 Publier le Git Flow 
 `git flow feature publish featureform`{{execute T2}}
 
 > NB: s'il vous le demande, le mot de passe du user git est 'git'
 ```
 _Répondre: yes
  ```
 
 Regarder les logs 
 `git flow log`{{execute T2}}
 
  
  
  
 
 #### (VM1) Constater que la branche feature est bien centralisésur le `Repository Central`  

 `git branch`{{execute T1}}



#### (VM3) `Equipe 2` Track le git Flow 'Feature' de l'autre equipe 

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
  `git flow feature track featureform`{{execute T3}}

 
 Regarder les logs 
  `git flow log`{{execute T3}}





 
