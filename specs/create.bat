ls *.yaml | xargs -I {} kubectl.exe create -f {}
