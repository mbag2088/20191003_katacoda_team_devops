> Utilisez l'utilisateur "toto" pour créer et lancer le playbook

> Créer un fichier playbook_ex08.yml dans votre espace de travail /work_dir de la machine Ansible

> Caractéristiques du playbook "playbook_ex08.yml:

> Le groupe sur lequel s'exécuteront les taches: db

> Le playbook fait appel au rôle "ntp"

> Créer un role "ntp" avec l'arborescence suivante:

```
 /work_dir/
    ├── playbook_ex07.yml
    ├── hosts.ini
    └── roles
        └── ntp 
            ├── defaults
            │   └── main.yaml  
            ├── handlers
            │   └── main.yaml  
            ├── tasks
            │   └── main.yaml  
            └── templates
               └── ntp.conf.j2
```

> Caracteristiques du rôle "ntp":

> tache1: Instalation du service ntp

> tache2: Creation du fichier de configuration ntp.conf à partir d'un template et affectation les droits suivants: (owner: root, group: root, mode: '0644'). Utilisez le template présent dans /work_dir/training-files/ntp.conf.j2 et copiez le dans le bon endroit.

> tache2: redamarage du service ntp si seulement le fichier de configuration a été changé.

> Déclarer les valeurs par defaut de la variable "ntp_servers" au niveau du rôle "ntp". 

> Voici les valeurs:
> ntp_servers:
>  - '0.debian.pool.ntp.org'
>  - '1.debian.pool.ntp.org'
>  - '2.debian.pool.ntp.org'

> tache3: S'assurer que le service ntp est bien démarré


