minikube ssh "sudo mkdir /mnt/albertoalvarezgarcia -p"
ls *.yaml | xargs -I {} kubectl create -f {}
