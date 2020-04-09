minikube.exe ssh "sudo mkdir /mnt/albertoalvarezgarcia -p"
ls *.yaml | xargs -I {} kubectl.exe create -f {}
