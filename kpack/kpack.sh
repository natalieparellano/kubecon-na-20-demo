#!/bin/bash

########################
# include the magic
########################
. ../demo-magic.sh

# hide the evidence
clear

# Put your stuff here

pe "cd ../app && ls"

pe "docker pull buildpacksiodev/hello-kpack"

cmd

pe "vim src/main/resources/templates/index.html"

pe "git add . && git commit -m \"new commit\""

pe "git push"

pe "kubectl get pods --watch"

pe "docker pull buildpacksiodev/hello-kpack"

cmd

echo "old id: $old_id"

echo "new id: $new_id"

cmd

pe "kubectl logs $pod --all-containers=true"

pe "kubectl describe image hello-kpack"

pe "kubectl describe clusterstack base"

pe "cd ../kpack"

vim stack.yaml

pe "kubectl apply -f ./stack.yaml"

pe "kubectl get pods --watch"

cmd

pe "kubectl logs $pod --all-containers=true"

pe "docker pull buildpacksiodev/hello-kpack"

cmd

echo "old id: $old_id"

echo "new id: $new_id"

echo "rebase id: $rebase_id"

