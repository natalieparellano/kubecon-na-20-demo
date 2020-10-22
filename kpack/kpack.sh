#!/bin/bash

########################
# include the magic
########################
. ../demo-magic.sh

# hide the evidence
clear

# Put your stuff here

pe "cat ./image.yaml"

echo -n 70284a1920a97a3ec1e6b73eccdf41ba06ef94cd | pbcopy

pe "vim ./image.yaml"

pe "kubectl apply -f ./image.yaml"

pe "kubectl get pods --watch"

cmd

pe "kubectl logs $pod --all-containers=true"

pe "kp build status hello-kpack"

echo "###"

pe "kubectl describe image hello-kpack"

pe "kubectl describe clusterstack base"

pe "vim stack.yaml"

pe "kubectl apply -f ./stack.yaml"

pe "kubectl get pods --watch"

cmd

pe "kubectl logs $pod --all-containers=true"

pe "kp build status hello-kpack"

pe "docker pull buildpacksiodev/hello-kpack"

