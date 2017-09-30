#!/bin/bash
#!----------------------------------------------------------------------------!
#!                                                                            !
#! YRexpert : (Your Relay) Système Expert sous Mumps GT.M et GNU/Linux        !
#! Copyright (C) 2001-2015 by Hamid LOUAKED (HL).                             !
#!                                                                            !
#!----------------------------------------------------------------------------!

# Créer la base de données DMO.dat à partir du fichier par défaut dmo.zwr
echo "{--- Début du script **CreerGlobalsDMO.sh**"

###
# Récuperer les répertoires d'installation yxp et gtm
export yxp_dist=$( cd -P -- "$(dirname -- "$(command -v -- "$0")")" && cd ../../.. && pwd -P)
echo "yxp_dist="$yxp_dist
source $yxp_dist/config/env.conf

###
# Définir les variable d'environnement de GTM
export gtmgbldir="$yxp_dist/partitions/dmo/globals/DMO.gld"
export gtmroutines="$yxp_dist/objects($yxp_dist/routines $gtm_dist) $gtm_dist()"

echo ""
echo "Créer la base de données. Ceci peut prendre un moment..."
echo ""
echo $yxp_dist
echo $gtm_dist
echo $gtmgbldir
echo $gtmroutines
echo ""

# Création des globales pour la base de données.
$gtm_dist/mumps -r ^GDE <<DONE
change -s DEFAULT -block=4096 -glo=2048 -file=$yxp_dist/partitions/dmo/globals/DMO.dat
change -s DEFAULT -allocation=10000 -extension=2000
change -r DEFAULT -key=255 -rec=1024
exit
DONE

$gtm_dist/mupip create
# importation des globales
$gtm_dist/mupip load $yxp_dist/partitions/dmo/globals/dmo.zwr



echo "---} Fin du script **CreerGlobalsDMO.sh**"


