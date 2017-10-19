#!/bin/bash
#!----------------------------------------------------------------------------!
#!                                                                            !
#! YRexpert : (Your Yrelay) Système Expert sous Mumps GT.M et GNU/Linux       !
#! Copyright (C) 2001-2015 by Hamid LOUAKED (HL).                             !
#!                                                                            !
#!----------------------------------------------------------------------------!

#rest> /home/hamid/yrelay/yrexpert-dmo/scripts/ExporterGlobalsDMO.sh
source /home/yrelay/partitions/dmo/config/env
export SHELL=/bin/bash
#Cela existent pour des raisons de compatibilité
alias gtm="$gtm_dist/mumps -dir"
alias GTM="$gtm_dist/mumps -dir"
alias gde="$gtm_dist/mumps -run GDE"
alias lke="$gtm_dist/mumps -run LKE"
alias dse="$gtm_dist/mumps -run DSE"
#$gtm_dist/mumps -dir
$gtm_dist/mupip EXTRACT -SELECT=* /home/yrelay/tmp/dmo.zwr_$(date +%Y%m%d%H%m%s)
#$gtm_dist/mupip load /home/hamid/yrelay/yrexpert-dmo/globals/arc/dmo.zwr
#$gtm_dist/mupip EXTRACT -SELECT=* /home/hamid/yrelay/yrexpert-dmo/globals/arc/dmo_$(date +%Y%m%d%H%m%s).zwr
exit

export global=ANSA && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=CPTEUR && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=MN && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=PBMANA && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=PLEX && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=PLEXI && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=PLEXP && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=QSVARACT && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=QSVARAT && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=QSVARAT1 && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=QUERY2 && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=QUERY3 && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=QUERY4 && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=QUERYT && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=QUERYV && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=QX && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQS1 && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQS2 && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSAUTOR && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSDEFAU && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSDON && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSDROIT && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSFILS && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSGLO && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSILIEN && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSLIEN && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSLIEN2 && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSMDL1 && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSMDL2 && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSMDL3 && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSMDL4 && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSMOD && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSMOD3 && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSMODIN && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSNCLES && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSNOINT && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSNOLOG && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSPERE && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=RQSQUAL && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=TOLEX && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=TOLEXU && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=TOUNIT && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=TTL && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=VERSION && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=ZLIGTRIE && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=ZLILA && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr
export global=ZSYSMORE && $gtm_dist/mupip EXTRACT -SELECT=$global /home/yrelay/tmp/$global.zwr






