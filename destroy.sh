ls -r *.yaml | xargs -I {} kubectl delete -f {}
