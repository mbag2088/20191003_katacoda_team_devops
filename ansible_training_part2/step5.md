


> **Modifier** le playbook **"playbook_ex01.yml"** de **l'exercice précédent** de sorte qu'il se connecte sur la machine cible avec l'utilisateur **"toto"**

> Cette utilisateur est déja créé et configuré sur la machine cible. Le mot de passe est le meme que le nom d'utilisateur

> modifier manuellement sur le serveur ansible le contenu du fichier /work_dir/training-files/config.txt: remplacer DocumentRoot "/www/example1" par DocumentRoot "/www/example". Le but de cette modification c'est de déclancer la 2ème tache du playbook qui permet de copier le fichier (si le fichier n'a pas été modifié, le module copy ne vas pas recopier le fichier) 

> Lancer le playbook avec l'utilisateur root


##### *Remarques:*

- Lors du lancement du playbook, vous allez surement avoir une erreur comme ci-dessous.

<pre style="color: red">
fatal: [managed_node1]: FAILED! => {"msg": "to use the 'ssh' connection type with passwords, you must install the sshpass program"}
</pre>

La methode de connexion ssh avec le mot de passe nécessite d'installer le package sshpass:

`apt-get install sshpass`{{execute T1}}

- Vous allez aussi avoir une erreur qui indique que le package sshpass ne supporte pas que le "host key checking" soit activé.

<pre style="color: red">
fatal: [managed_node1]: FAILED! => {"msg": "Using a SSH password instead of a key is not possible because Host Key checking is enabled and sshpass does not support this.  Please add this host's fingerprint to your known_hosts file to manage this host."}
</pre>

A completer 

