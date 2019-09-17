En tant que développeur, vous allez créer une nouvelle release, puis apprendre à la publier. 

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

 Regarder les logs, vous constater que nous avons fusionné les release -->  dans la branche de développement & master 
 `git flow log`{{execute T2}}


Consulter à présent les branches actives 
  `git branch`{{execute T2}}


Vous pouver Tagger la Release
 `git push --tags`{{execute T2}}

Puis vous pouver la pousser sur le repo Central
 `git push origin master`{{execute T2}}
