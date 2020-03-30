ls *.yaml | xargs -I {} kubectl create -f {}
