#!bin/bash

#tail : Récupère les 26 dernières lignes de ton fichier tutor.
tail -n 26 "/etc/services" | \
#grep : Supprime toutes les lignes vides.	
grep -v '^$' | \ 
#tac : Renverse l'ordre pour lire du bas vers le haut
tac | \
#rev : Écrit chaque ligne à l'envers (effet miroir).
rev | \
#awk : Ajoute la numérotation en commençant à 20.
awk 'BEGIN {n=20} {print n, $0; n++}' | \
#sort : Trie le résultat final dans l'ordre alphabétique.
sort | \

# Exo 3 : Ajout de la commande de comptage de ligne (wc -l)
wc -l 


