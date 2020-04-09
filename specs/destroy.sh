ls -r *.yaml | xargs -I {} kubectl delete -f {}
minikube ssh "sudo rm -rf /mnt/albertoalvarezgarcia/*"
minikube ssh "sudo ls /mnt/albertoalvarezgarcia"

