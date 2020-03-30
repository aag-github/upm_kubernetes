# Precondiciones
Crear dentro del nodo de minikube el directorio /mnt/albertoalvarezgarcia

# Storage Spec
Se crea un "volume" y un "volume claim". No es necesario hacerlo en ese orden estrictamente,
se puede hacer el claim antes que el volumen, así que lo podemos poner en el mismo spec.

### Ejecutar:
    kubectl create -f 1_storage.yaml

### Comprobar:
    kubectl get pv,pvc -l creator=albertoalvarezgarcia

El pvc (claim) debe tener STATUS "Bound"

# DB Spec
Creamos el servicio de base de datos después de que el "volumen claim" esté operativo, para
que la base de datos se genere en él.

### Ejecutar:
    kubectl create -f 2_db_anuncios.yaml

### Comprobar:
    kubectl get deployment,pod,service -l creator=albertoalvarezgarcia

Deben aparecer los tres recursos y el pod debe tener STATUS "Running"

# Web Application Spec
Una vez que la base de datos está levantada, desplegamos la aplicación.

### Ejecutar:
    kubectl create -f 3_app_anuncios.yaml

### Comprobar:
    kubectl get pod,deployment,service -l creator=albertoalvarezgarcia

Deben aparecer 6 recursos (3 db + 3 app) y los pods deben tener STATUS "Running"

# Ingress Spec
Para exteriorizar la app fuera del cluster.

### Ejecutar:
    kubectl create -f 4_ingress.yaml

### Comprobar:
    kubectl get ingress -l creator=albertoalvarezgarcia

Modificar el fichero hosts para que www.albertoalvarezgarcia.com se resuelva como
el nodo de kubernetes. En mi caso 192.168.99.100

En el navegador ir a:
    http://www.albertoalvarezgarcia.com/anuncios
