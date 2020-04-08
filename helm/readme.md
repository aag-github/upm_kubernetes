helm.exe install  --name aag albertoalvarezgarcia
helm.exe install  --name aag --set replicaCount=5 albertoalvarezgarcia

helm.exe delete aag --purge
