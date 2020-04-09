helm delete aag --purge
minikube ssh "sudo rm -rf /mnt/albertoalvarezgarcia/*"
minikube ssh "sudo ls /mnt/albertoalvarezgarcia"
