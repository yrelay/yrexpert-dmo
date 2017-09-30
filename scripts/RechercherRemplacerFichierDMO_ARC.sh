#!/bin/bash
#!----------------------------------------------------------------------------!
#!                                                                            !
#! YRexpert : (Your Relay) Syst�me Expert sous Mumps GT.M et GNU/Linux        !
#! Copyright (C) 2001-2015 by Hamid LOUAKED (HL).                             !
#!                                                                            !
#!----------------------------------------------------------------------------!

# Rechercher et remplacer une chaine de caract�re dans un fichier
# En fonction du besoin adapter le chemin et le nom du fichier
echo "{--- D�but du script **RechercherRemplacerFichierDMO_ARC.sh**"

export yxp_dist=$( cd -P -- "$(dirname -- "$(command -v -- "$0")")" && cd ../../.. && pwd -P)
echo "yxp_dist="$yxp_dist

# input : rechercher|remplacer
gui=`zenity --title "Chercher|Remplacer" --entry --text "Entrer le texte : chercher|remplacer" `

# si la recherche n'est pas valid�e
if [[ "$?" != 0 ]]; then
    zenity --title "Chercher|Remplacer" --info "Recherche abandonn�e"
    exit
fi

# spliter l'output
search=`echo ${gui} | cut -f1 -d \|`
replace=`echo ${gui} | cut -f2 -d \|`

# pour tout les fichiers .xml du r�pertoire courant
for file in $yxp_dist/partitions/dmo/globals/DMO.ARC
    do
    cp $file $file.bak &&
    sed "s|${search}|${replace}|g" $file.bak >$file
done

# remplacement effectu�
#zenity --title "Chercher|Remplacer" --info --text "Remplacement effectu�"
zenity --title "Chercher|Remplacer" --info "Remplacement effectu�"



echo "---} Fin du script **RechercherRemplacerFichierDMO_ARC.sh**"

 
