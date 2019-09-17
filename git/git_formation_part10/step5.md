En tant que développeur, vous allez créer une nouvelle release, puis apprendre à la publier. 

 Créer un fichier script_12.sh
 `echo "printf 'Ceci est le script de la nouvelle fonctionalité \n'" > script_12.sh;cat script_12.sh`{{execute T2}}
 
 Ajouter le fichier dans la "Staging Area" (cache)
 `git add script_12.sh `{{execute T2}}
 
 Commmiter la nouvelle release dans le Repository local 
 
 `git commit -m "ajout du sscript_12.sh repo local "`{{execute T2}}
   
 Vérifier le nouveau commmit
 `git log --oneline`{{execute T2}}
 
 Publier le Git Flow 
 `git flow release publish releaseform`{{execute T2}}
 
 ```
 _Répondre: yes
  ```
 
 Regarder les logs 
 `git flow log`{{execute T2}}
 
 Terminer le Git Flow en cours 
 `git flow release finish releaseform`{{execute T2}}

 Regarder les logs, vous constater que nous avons fusionné les release -->  dans la branche de développement 
 `git flow log`{{execute T2}}
