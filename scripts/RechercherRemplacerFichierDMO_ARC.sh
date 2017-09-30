#!/bin/bash
#!----------------------------------------------------------------------------!
#!                                                                            !
#! YRexpert : (Your Relay) Système Expert sous Mumps GT.M et GNU/Linux        !
#! Copyright (C) 2001-2015 by Hamid LOUAKED (HL).                             !
#!                                                                            !
#!----------------------------------------------------------------------------!

# Rechercher et remplacer une chaine de caractère dans un fichier
# En fonction du besoin adapter le chemin et le nom du fichier
echo "{--- Début du script **RechercherRemplacerFichierDMO_ARC.sh**"

export yxp_dist=$( cd -P -- "$(dirname -- "$(command -v -- "$0")")" && cd ../../.. && pwd -P)
echo "yxp_dist="$yxp_dist

# input : rechercher|remplacer
gui=`zenity --title "Chercher|Remplacer" --entry --text "Entrer le texte : chercher|remplacer" `

# si la recherche n'est pas validée
if [[ "$?" != 0 ]]; then
    zenity --title "Chercher|Remplacer" --info "Recherche abandonnée"
    exit
fi

# spliter l'output
search=`echo ${gui} | cut -f1 -d \|`
replace=`echo ${gui} | cut -f2 -d \|`

# pour tout les fichiers .xml du répertoire courant
for file in $yxp_dist/partitions/dmo/globals/DMO.ARC
    do
    cp $file $file.bak &&
    sed "s|${search}|${replace}|g" $file.bak >$file
done

# remplacement effectué
#zenity --title "Chercher|Remplacer" --info --text "Remplacement effectué"
zenity --title "Chercher|Remplacer" --info "Remplacement effectué"



echo "---} Fin du script **RechercherRemplacerFichierDMO_ARC.sh**"

 
