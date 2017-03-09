#!/bin/bash

# get two lists of repos from repos.sh
# also defines the catkin and working directories
. ./repos.sh

IP="192.168.131.221"
USER="bsb"

cd /home/frl/catkin_ws

# Make sure to run "git daemon" on laptop and do 
# touch git-daemon-export-ok
# for each repo

for REPO in "${ROSREPOS[@]}"
do 
    echo "--------${REPO}--------"
    git clone ssh://${USER}@${IP}/home/bsb/catkin_ws/${REPO}.git
done


for REPO in "${OTHERREPOS[@]}"
do 
 echo "hi"
done