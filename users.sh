#!/bin/bash

# ps aux génère un gros tableau de tout le système.
# awk '{print $1}' tranche ce tableau pour ne garder que la première colonne (la liste des noms)
# grep -v 'USER' supprime la ligne de titre du tableau pour ne garder que les vrais utilisateurs.
# sort regroupe tous les noms identiques ensemble (et commence à trier).
# uniq fusionne les doublons pour que chaque nom n'apparaisse qu'une seule fois.

ps aux |  awk '{print $1}' |  grep -v 'USER' | sort | uniq

