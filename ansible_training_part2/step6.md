
Certains paramètres de Ansible sont ajustables via un fichier de configuration.
Des modifications peuvent être apportées à ce fichier.

Ansible traitera la liste ci-dessus et utilisera le premier fichier trouvé.

* ANSIBLE_CONFIG (an environment variable)
* ansible.cfg (in the current directory)
* .ansible.cfg (in the home directory)
* /etc/ansible/ansible.cfg

##### _Note_:
    - Si vous installez ansible à partir d’un gestionnaire de paquets, le dernier fichier ansible.cfg doit figurer dans /etc/ansible,
    - Si vous avez installé depuis pip, vous pouvez créer ce fichier afin de remplacer les paramètres par défaut dans Ansible.

Télécharger le dernier fichier de configuration depuis github afin de connaitre toutes les valeurs possibles:

`wget https://raw.githubusercontent.com/ansible/ansible/devel/examples/ansible.cfg`{{execute T1}}

Copier ce fichier dans /etc/ansible/ansible.cfg:
`mkdir -p /etc/ansible/ && mv /work_dir/ansible.cfg /etc/ansible/ansible.cfg`{{execute T1}}

Affiher le contenu du fichier de configuration
`cat /etc/ansible/ansible.cfg`{{execute T1}}


##### Variable de configuration fréquemment définies:
- inventory: localisation du fichier d’inventaire
- host_key_checking: désactiver/activer la vérification de la clé SSH lors de la connexion vers les machines managées 

