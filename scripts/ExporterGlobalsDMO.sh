#!/bin/bash
#!----------------------------------------------------------------------------!
#!                                                                            !
#! YRexpert : (Your Relay) Système Expert sous Mumps GT.M et GNU/Linux        !
#! Copyright (C) 2001-2015 by Hamid LOUAKED (HL).                             !
#!                                                                            !
#!----------------------------------------------------------------------------!

# Créer la base de données DMO.dat à partir du fichier par défaut dmo.zwr
echo "{--- Début du script **ExporterGlobalsDMO.sh**"

export yxp_dist=$( cd -P -- "$(dirname -- "$(command -v -- "$0")")" && cd ../../.. && pwd -P)
echo "yxp_dist="$yxp_dist
source $yxp_dist/config/env.conf

###
# Définir les variable d'environnement de GTM
export gtmgbldir="$yxp_dist/partitions/dmo/globals/DMO.gld"

echo ""
echo "Exporter la base de données. Ceci peut prendre un moment..."
echo ""
echo $yxp_dist
echo $gtm_dist
echo $gtmgbldir
echo ""

# Archiver toutes les globales
$gtm_dist/mupip EXTRACT -SELECT=* "$yxp_dist/partitions/dmo/globals/dmo_$(date +%Y%m%d%H%m%s).zwr"



echo "---} Fin du script **ExporterGlobalDMO.sh**"


