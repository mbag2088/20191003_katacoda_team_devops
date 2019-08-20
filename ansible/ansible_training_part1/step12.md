
Les modules sont les principaux éléments constitutifs d’Ansible et sont essentiellement des scripts réutilisables utilisés à partir de la ligne de commande ou dans une tâche par les playbooks d’Ansible qu'on verra ultérieurement. 

Il existe une large liste de modules Ansible, mais vous pouvez également écrire les vôtres. Vous devrez l’écrire en Python.

Chaque module prend en charge la prise d'arguments. Presque tous les modules prennent des arguments clé = valeur, délimités par des espaces. 

##### _Syntax:_ 
ansible $TARGET -m $MODULE -a $MODULE_ARGUMENTS

Pour Afficher le manuel d'un module: ansible-doc $MODULE

##### _Valeurs de retour_

Les modules Ansible renvoient normalement une structure de données qui peut être enregistrée dans une variable ou vue directement lors de la sortie par le programme ansible. Chaque module peut éventuellement documenter ses propres valeurs de retour uniques (visibles via ansible-doc et sur le site officiel.

Sur le site officiel ansible vous pouvez par exemple trouver les valeurs de retour du module ["archive"](https://docs.ansible.com/ansible/latest/modules/archive_module.html#archive-module) présenté comme suit:

![archive_return_value](/devopsteam/courses/ansible/ansible_training_part1/assets/archive_module_return_value.png)

La page disponible dans le lien suivant couvre les valeurs de retour communes à tous les modules:

https://docs.ansible.com/ansible/latest/reference_appendices/common_return_values.html#common



