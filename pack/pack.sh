#!/bin/bash

########################
# include the magic
########################
. ../demo-magic.sh

# hide the evidence
clear

# Put your stuff here

pe "pack suggest-builders"

pe "cd ../app && ls"

pe "pack build hello-pack --builder gcr.io/buildpacks/builder:v1"

