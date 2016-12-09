#!/bin/bash

# get two lists of repos from repos.sh
# also defines the catkin and working directories
. ./repos.sh



for REPO in "${ROSREPOS[@]}"
do 
    cd ${CATKIN}/src/${REPO}
    git pull origin master
done


for REPO in "${OTHERREPOS[@]}"
do 
    cd ${WCD}/${REPO}
    git pull origin master
done