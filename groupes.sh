#!/bin/bash 

#groups : Cette commande affiche tous tes groupes sur une seule ligne, séparés par des espaces (par exemple : wr3n adm cdrom sudo)
groups | \

awk '{print $1";"$2";"$3";"$4"."}'


