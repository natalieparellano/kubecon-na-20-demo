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

pe "docker run --rm -p 8080:8080 hello-pack"

pe "pack build buildpacksiodev/hello-pack --builder gcr.io/buildpacks/builder:v1 --publish"

pe "docker run --rm -p 8080:8080 buildpacksiodev/hello-pack"

