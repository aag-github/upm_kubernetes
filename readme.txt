Crear dentro del nodo de minikube el directorio /mnt/albertoalvarezgarcia

Storage: Se crea un volume y un volume claim. No es necesario hacerlo en ese orden estrictamente,
         se puede hacer el claim antes que el volumen.

    Ejecutar:
        kubectl create -f 1-storage.yaml

    Comprobación:
        Ejecutar: kubectl.exe get pv,pvc -l creator=albertoalvarezgarcia
        Comprobar: que el pvc (claim) tener STATUS "Bound"

DB: Necesitamos que el volumen claim esté operativo, para que la base de datos
    se genere en él. 

    Ejecutar: 

    Comprobación:
        Ejecutar: kubectl.exe get deployment,pod,service -l creator=albertoalvarezgarcia
        Comprobar: Deben aparecer los tres recursos y el pod debe tener STATUS "Running"

Ingress: Para exteriorizar la app fuera del cluster.