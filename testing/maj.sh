#!/usr/bin/env bash
#!----------------------------------------------------------------------------!
#!                                                                            !
#! YRexpert : (Your Yrelay) Système Expert sous Mumps GT.M et GNU/Linux       !
#! Copyright (C) 2001-2015 by Hamid LOUAKED (HL).                             !
#!                                                                            !
#!----------------------------------------------------------------------------!

# Aller sur le dépôt
cd /home/hamid/yrelay/yrexpert-dmo

# Github
if ! [ -d .git ] ; then
    git init
    git remote add origin git@github.com:yrelay/yrexpert-dmo.git
    echo "Vos fichiers pour la partitions DMO de YRexpert..." > .git/description
fi
git add .
git commit -m "$version - Màj auto"
git push -u origin master


