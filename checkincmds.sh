#!/bin/bash
MSG="New stable version of USV plugin and support packages"

CMDS=("git commit -a -m '${MSG}' " \
    "git push origin master")

