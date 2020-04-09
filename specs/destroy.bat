ls -r *.yaml | xargs -I {} kubectl.exe delete -f {}
minikube.exe ssh "sudo rm -rf /mnt/albertoalvarezgarcia/*"
minikube.exe ssh "sudo ls /mnt/albertoalvarezgarcia"
