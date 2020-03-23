Crear dentro del nodo de minikube el directorio /mnt/albertoalvarezgarcia

Storage:
Ejecutar:
    kubectl create -f 1-storage.yaml

Comprobación:
    Ejecutar: kubectl.exe get pv,pvc -l creator=albertoalvarezgarcia
    Comprobar: que el pvc (claim) está en estado "Bound"