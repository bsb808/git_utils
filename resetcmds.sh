#!/bin/bash

# get two lists of repos from repos.sh
# also defines the catkin and working directories
. ./repos.sh

CMDS=("git commit -a -m \"Saving temporarary work - just in case\"" \
    "git branch tmp-saved-work" \
    "git fetch origin" \
    "git reset --hard origin/master" )
