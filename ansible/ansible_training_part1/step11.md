

Maintenant, puisque les hotes cibles connaissent la clé SSH publique de l'hôte Ansible, nous sommes prêts à établir une connexion SSH.

Nous allons retester le module ping et cette fois ci vous devriez avoir une réponse "pong"

`ansible web -i hosts.ini -m ping`{{execute T1}}

`ansible db -i hosts.ini -m ping`{{execute T1}}

<pre style="color: green">
managed_node1 | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
</pre>


##### _Notes:

Vous pouvez utiliser l'option -v pour afficher plus de debug lors du lancement de la commande Ansible(option avec plus de v=plus de debug)

Exemple :

`ansible web -i hosts.ini -m ping -vv`{{execute T1}}
