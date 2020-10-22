#!/bin/bash

########################
# include the magic
########################
. ../demo-magic.sh

# hide the evidence
clear

# Put your stuff here

pe "cat ./image.yaml"

pe "docker pull buildpacksiodev/hello-kpack"

echo -n b50649790825aeebd263158ba0c1d271e4fcd379 | pbcopy

pe "vim ./image.yaml"

pe "kubectl apply -f ./image.yaml"

pe "kubectl get pods --watch"

pe "docker pull buildpacksiodev/hello-kpack"

cmd

pe "kubectl logs $pod --all-containers=true"

pe "kp build status hello-kpack"

echo ########

pe "kubectl describe image hello-kpack"

pe "kubectl describe clusterstack base"

pe "vim stack.yaml"

pe "kubectl apply -f ./stack.yaml"

pe "kubectl get pods --watch"

cmd

pe "kubectl logs $pod --all-containers=true"

pe "docker pull buildpacksiodev/hello-kpack"

pe "kp build status hello-kpack"
