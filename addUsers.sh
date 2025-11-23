#! /bin/bash

if [ $# -eq 0 ]; then
	echo "il manque les noms d'utilisateurs en argument - Fin du script"
	exit 1
fi

for user in "$@"
do
	if cat /etc/passwd | grep $user
	then 
		echo "l'utilisateur $user existe déja"
	else
		echo "création du compte"
		useradd -m -s /bin/bash "$user"
			if cat /etc/passwd | grep "$user"
			then
				echo "l'utilisateur $user a été crée"
			else
				echo "Erreur à la création de l'utilisateur $user"
			fi	
	fi
done	
