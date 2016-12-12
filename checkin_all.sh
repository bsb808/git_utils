#!/bin/bash

# get two lists of repos from repos.sh
# also defines the catkin and working directories
. ./repos.sh

MSG="working version of kingfisher yaw control"
CMDS=("git status" \
    'git commit -a -m \"${MSG}\" ' \
    "git push origin master")

for REPO in "${ROSREPOS[@]}"
do 
    echo "--------${REPO}--------"
    cd ${CATKIN}/src/${REPO}
    for CMD in "${CMDS[@]}"
    do
	${CMD}
    done
done


for REPO in "${OTHERREPOS[@]}"
do 
    echo "--------${REPO}--------"
    cd ${WCD}/${REPO}
    for CMD in "${CMDS[@]}"
    do
	${CMD}
    done
done