
Le module yum permet d'installer, mettre à niveau, downgrader, supprimer et lister les packages sur un serveur.

Le module service permet de contrôler les services sur les hôtes distants (Arret, demarrage, status, ...) 

*Plus d'informations sur leurs utilisations : 
[Documentation du module yum](https://docs.ansible.com/ansible/latest/modules/yum_module.html?highlight=yum%20module)
[Documentation du module service](https://docs.ansible.com/ansible/latest/modules/service_module.html?highlight=service%20module)

> Créer un fichier playbook_ex04.yml dans votre espace de travail /work_dir de la machine Ansible

> Caractéristiques du playbook "playbook_ex04.yml":

> -Le groupe sur lequel s'exécuteront les taches: web

> -Tache 1: Permet d'installer le package apache server (le nom du package est apache2)

> -Tache 2: Permet de copier le fichier de configuration apache2.conf depuis le serveur source ansible(/work_dir/training-files) vers le serveur cible managed_node1 (/etc/apache2/apache2.conf)

> -Tache 3: Permet de copier le fichier de configuration index.html depuis le serveur source ansible(/work_dir/training-files) vers le serveur cible managed_node1 (/var/www/html)

> -Tache 4: Permet de démarrer le service apache2
