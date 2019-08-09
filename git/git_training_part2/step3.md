
Nous allons ouvrir un terminal qui contiendra notre Repository local et nos développements.

Vérifier que l'environnement de formation est prêt:
`if [ $(docker ps  | grep -v CONTAINER | wc -l) -ge 3 ]; then echo "OK"; else echo "Attendre 30s!";sleep 30;  fi`{{execute T1}}

Puis, lancer les commandes suivantes:
`d1() { docker exec -it dev1_git_local bash -c "cd /work_dir; echo 'PS1='\''dev1_git_local# '\' >> /root/.bashrc; su - git"; } && d1`{{execute T1}}



##### _Remarque_:
Le prompt dev1_git_local#  vous aidera à repèrer la machine sur laquelle vous êtes connecté.

Si toutes fois vous êtes sortie avec un exit , vous pouvez taper les commandes suivantes:

d1 => Pour se connecter à la VM 'dev1_git_local'.

