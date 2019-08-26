
Comme nous l’avons mentionné précédemment, la plupart des modules sont idempotents et s'exécutent lorsqu’ils ont effectué un changement sur le hôte distant.

Les Playbooks disposent d'un système **d'événements de base** pouvant êtres utilisés pour réagir aux changements.

les actions **notifié** sont déclenchées **à la fin de chaque play et ne seront déclenchées qu’une seule fois**, même si elles sont notifiées par plusieurs tâches différentes.

Par exemple, plusieurs ressources peuvent indiquer qu'apache doit être redémarré car elles ont modifié un fichier de configuration, mais Apache ne sera redémaré qu'une seule fois afin d'éviter des redémarrages inutiles.

##### *Exemple*

Redémarrage de deux services lorsque le contenu d’un fichier est modifié, mais uniquement si le fichier est modifié:

<pre class="file">
- name: template configuration file
  template:
    src: template.j2
    dest: /etc/foo.conf
  notify:
     - restart memcached
     - restart apache
</pre>

"restart memcached" et "restart apache" qui sont dans la section de notification et les noms des handlers.

Ce sont des listes de tâches, pas vraiment différentes des tâches habituelles. Elles sont référencées par un nom unique.
Un handler qui n'est notifié par aucune des taches du playbook , ne s'éxécute pas

Voici la section des handlers:

<pre class="file">
handlers:
    - name: restart memcached
      service:
        name: memcached
        state: restarted
    - name: restart apache
      service:
        name: apache
        state: restarted
</pre>        

---

- Dans les étapes suivantes vous allez traiter des exercices sur les handlers, templates et les conditions. Lancez les commandes suivantes afin de préparer vos environnements:

`a() { docker exec -it ansible_node bash -c "cd /work_dir; echo 'PS1='\''ansible# '\' >> /root/.bashrc; bash"; } && a`{{execute T1}}

`n1() { docker exec -it managed_node1 bash -c "cd /work_dir; echo 'PS1='\''managed_node1# '\' >> /root/.bashrc; bash"; } && n1`{{execute T2}}

`n2() { docker exec -it managed_node2 bash -c "cd /work_dir; echo 'PS1='\''managed_node2# '\' >> /root/.bashrc; bash"; } && n2`{{execute T3}}