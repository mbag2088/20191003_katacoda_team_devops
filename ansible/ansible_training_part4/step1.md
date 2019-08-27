
- Ansible: Les rôles
  - Exercice 8: Utilisation des rôles pour installer le service ntp
  
  
  
L'installation de l'environnement nécessite un téléchargement conséquent, merci d'attendre une minute minimum avant de lancer les commandes suivantes. Si un message d'erreur apparaît alors attendre encore car selon l'horaire le téléchargement est plus ou moins long.


`a() { docker exec -it ansible_node bash -c "cd /work_dir; echo 'PS1='\''ansible# '\' >> /root/.bashrc; bash"; } && a`{{execute T1}}

`n1() { docker exec -it managed_node1 bash -c "cd /work_dir; echo 'PS1='\''managed_node1# '\' >> /root/.bashrc; bash"; } && n1`{{execute T2}}

`n2() { docker exec -it managed_node2 bash -c "cd /work_dir; echo 'PS1='\''managed_node2# '\' >> /root/.bashrc; bash"; } && n2`{{execute T3}}

