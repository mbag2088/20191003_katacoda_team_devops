 
Nous avons vu comment exécuter des tâches à l'aide de modules en ligne de commande, mais que se passe-t-il si vous devez exécuter plusieurs tâches? Les playbooks vous aident à les exécuter de manière scriptée.

Les Playbooks définissent des variables, des configurations, des étapes de déploiement séquentielles effectuant plusieurs tâches. 

Les playbooks sont principalement définis pour orchestrer les étapes sur plusieurs machines et les amener à un état souhaité.

Un Playbook est écrit au format YAML avec une extension de fichier ".yml". Il faut être très prudent avec le format et l'alignement, ce qui le rend très sensible.

Chaque playbook commence par 3 tirets '-'

_Syntax d'utilisation:_

Ansible-playbook [-i $INVENTORY_FILE] playbook.yaml


#### Les sections d'un playbook


Chaque playbook est composé d’un ou de plusieurs "play" dans une liste. Le but d'un play est de mapper un groupe d'hôtes sur des rôles bien définis, représentés par des tâches et des appels.

1- Section Host:

Définit les machines cibles sur lesquelles le playbook doit être exécuté. Ceci est basé sur le fichier d'inventaire Ansible.

2- Section des variables:

Ceci est facultatif et permet de déclarer toutes les variables nécessaires dans le playbook. 

3- Section Tâches:

Cette section répertorie toutes les tâches à exécuter sur les machines cibles. Chaque task fait appel à un module. Chaque tâche a un nom qui est une petite description de ce qu’elle fera et sera listée pendant l’exécution du playbook.

4- Section handler:

Ceci est facultatif. Ce sont des tâches qui seront exécutés si et seulement si elles sont notifiées.

#### Exemple d'un playbook
##### _Objectif:_ 

> Installation d’un webserver

> Configuration

> Démarrage


Analyser bien les parties de ce playbook et vous allez identifier les sections détaillés précédemments. 
``` 
---
- hosts: webservers
  vars:
    http_port: 80
    max_clients: 200
  remote_user: root
  tasks:
  - name : ensure apache is at the latest version
    yum:
      name: httpd
      state: latest
  - name: write the apache config file
    template:
      src: /srv/httpd.j2
      dest: /etc/httpd.conf
    notify:
    - restart apache
  - name: ensure apache is running
    service:
      name: httpd
      state: started
  handlers:
    - name: restart apache
      service:
        name: httpd
        state: restarted
```

##### *Remarque:* 

- "remote_user" est le compte qui se connecte à la machine cible. Si remote_user n'est pas défini, ansible vas utiliser le nom d'utilisateur qui lance le playbook.

La bonne pratique c'est d'utiliser un autre compte que l'utilisateur "root". Si cette utilisateur doit effectuer des tâches en tant que root ou autre, il doit disposer d’autorisations sudo sur la machine cible.

Vous allez comprendre le fonctionnement des utilisateurs dans la prochaine étape. 

---

- Dans les étapes suivantes vous allez avoir des exércices sur des playbooks. Lancez les commandes suivantes afin de préparer vos environnements:

`a() { docker exec -it ansible_node bash -c "cd /work_dir; echo 'PS1='\''ansible# '\' >> /root/.bashrc; bash"; } && a`{{execute T1}}

`n1() { docker exec -it managed_node1 bash -c "cd /work_dir; echo 'PS1='\''managed_node1# '\' >> /root/.bashrc; bash"; } && n1`{{execute T2}}

`n2() { docker exec -it managed_node2 bash -c "cd /work_dir; echo 'PS1='\''managed_node2# '\' >> /root/.bashrc; bash"; } && n2`{{execute T3}}