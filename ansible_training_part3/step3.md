
L'objectif est d'installer et de configurer un serveur apache, puis de **redémarer** le service apache **si seulement si la configuration a été changé**

Vous devriez déja vus et traité un exércice sur l'installation du package apache dans la formation "Ansible pour le DEVOPS: partie 2" "exércice 4 de step7"

> Créer un fichier playbook_ex01.yml dans votre espace de travail /work_dir de la machine Ansible

> Caractéristiques du playbook "playbook_ex04.yml":

> -Le groupe sur lequel s'exécuteront les taches: web

> -Tache 1: Permet d'installer le package apache server (le nom du package est apache2)

> -Tache 2: Permet de copier le fichier de configuration apache2.conf depuis le serveur source ansible(/work_dir/training-files) vers le serveur cible managed_node1 (/etc/apache2/apache2.conf)

> -Tache 3: Permet de copier le fichier de configuration index.html depuis le serveur source ansible(/work_dir/training-files) vers le serveur cible managed_node1 (/var/www/html)

> -Tache 4: Permet de démarrer le service apache2
