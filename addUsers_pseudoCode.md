```
début du script addUser
#vérifier si les arguments ont été fournis
  si nombre d'argument = 0 
    alors
	    afficher "il manque les noms d'utilisateurs en arguments - Fin du script"
	    arrêter le script
  fin de si

pour chaque user parmi les arguments
faire
#vérifier si l'utilisateur existe déja 
si l'utilisateur existe déja dans /etc/passwd 
	alors
        afficher "l'utilisateur existe déja"
	sinon
        afficher "création du compte"
          #création de l'utilisateur
          créer l'utilisateur user
          #vérifier que l'utilisateur a bien été crée dans le fichier /etc/passwd
          si l'utilisateur apparait maintenant dans /etc/passwd
          alors
              afficher "l'utilisateur $user a été crée"
          sinon 
              afficher "Erreur à la création de l'utilisateur $user"
          fin de si
fin de si
fin du script addUser

```
