ls -r *.yaml | xargs -I {} kubectl.exe delete -f {}
