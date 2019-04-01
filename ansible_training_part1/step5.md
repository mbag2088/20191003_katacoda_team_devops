
#### 1) Installer Ansible sur la machine de controle: host 1

Plusieurs solutions possibles pour l'installation :

- via l'utilisation de package rpm
- via l'utilisation de pip install

Nous avons choisi dans cette formation l'instalation via la commande "pip"

1.Vérifier que le package python-pip est bien installé
   `apt list --installed | grep python-pip`{{execute T1}}
  
  Si le package est installé,le résultat de la commande doit contenir les 2 lignes ci-dessous et vous pouvez ignorer l'etape 3:

```
python-pip/xenial-updates,now 8.1.1-2ubuntu0.4 all [installed]
python-pip-whl/xenial-updates,now 8.1.1-2ubuntu0.4 all [installed,automatic]
```

2.Sinon installer le package python
   `apt-get install -y python-pip`{{execute T1}} 

3.Installer Ansible avec la version 2.7.7
   `pip install ansible==2.7.7`{{execute T1}}
   
4.Vérifier que Ansible est bien installé
   `ansible --version`{{execute T1}}
   
   
#### 2) Installer Python sur les serveurs managés
##### 1.Vérifier que le package python est bien installé
- Sur le managed_node1 `apt list --installed  python*`{{execute T2}}
- Sur le managed_node2 `apt list --installed  python*`{{execute T3}}

Si le package Python est déjà installé: présence de l'une des lignes ci-dessous   -> alors sauter  l'étape 2 et Continuer l'autres step 

```
python3/xenial,now 3.5.1-3 amd64 [installed,automatic]
python2.7/xenial-updates,xenial-security,now 2.7.12-1ubuntu0~16.04.4 amd64 [installed,automatic]

```

##### 2.Installer le package python
- Sur le managed_node1 `apt-get install -y python`{{execute T2}}
- Sur le managed_node2 `apt-get install -y python`{{execute T3}}
