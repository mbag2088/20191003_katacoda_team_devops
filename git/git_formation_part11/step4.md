#### L'équipe n° 1, dev développe en utilisant le Git Glow
 
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
  
    
 
#### L'équipe n° 2 dev, développe et utilise le Git Glow

Vérifier que le Git Flow est bien présent
 `git flow config`{{execute T3}}


 consulter les tags distants 
  `git ls-remote --tags origin`{{execute T3}}

 Recupèrer les tags
  `git fetch origin 'refs/tags/v2.1.0'`{{execute T3}}

Recupèrer une release dans une branche local
  `git checkout -b branch2.1.0 v2.1.0`{{execute T3}}


    


Recupèrer les dev de l'autre équipe
  `git pull --rebase origin master`{{execute T3}}

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
