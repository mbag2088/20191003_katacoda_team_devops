#### L'équipe qui développe doit initialiser un Git Glow local
 ```
Prérequis pour utiliser l'outil Git Flow:  avoir au préalable installé le package linux "git-flow" 
(commande utilisée pour ce faire: apt-get install git-flow -y)
 ``` 
 
A présent,  vous devez initier l'environnement Git Flow
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
 
 Démarrer un Work Flow pour créer une permière Featues  (fonctionalité)
 `git flow feature start featureform`{{execute T2}}
 
 Vérifier la création de la Feature
 `git flow feature`{{execute T2}}

En tant que développeur, vous allez créer une nouvelle feature, puis apprendre à la publier. 

 Créer un fichier script_feature.sh
 `echo "printf 'Ceci est le script de la nouvelle fonctionalité \n'" > script_feature.sh;cat script_feature.sh`{{execute T2}}
 
 Ajouter le fichier dans la "Staging Area" (cache)
 `git add script_feature.sh `{{execute T2}}
 
 Commmiter la nouvelle feature dans le Repository local 
 
 `git commit -m "ajout du sscript_feature.sh repo local "`{{execute T2}}
   
 Vérifier le nouveau commmit
 `git log --oneline`{{execute T2}}
 
 Publier le Git Flow 
 `git flow feature publish featureform`{{execute T2}}
 
 ```
 _Répondre: yes
  ```
 
 Regarder les logs 
 `git flow log`{{execute T2}}
 
 Terminer le Git Flow en cours 
 `git flow feature finish featureform`{{execute T2}}

 Regarder les logs, vous constater que nous avons fusionné les feature -->  dans la branche de développement 
 `git flow log`{{execute T2}}
 



