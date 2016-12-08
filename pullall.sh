#!/bin/bash
CATKIN="/home/bsb/catkin_ws"
ROSREPOS=(kingfisher_control \
    kingfisher_gazebo \
    kingfisher_plugins)


for REPO in "${ROSREPOS[@]}"
do 
    cd ${CATKIN}/src/${REPO}
    git pull origin master
done

WCD="/home/bsb/WorkingCopies"
OTHERREPOS=(pypid)
for REPO in "${ROSREPOS[@]}"
do 
    cd ${WCD}/${REPO}
    git pull origin master
done