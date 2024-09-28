#!/bin/bash

#  cette instruction va Construire le conteneur Docker
docker build -t tomcat-deploy -f Dockerfile .

# Lancer le conteneur Docker avec le volume monté
docker run --privileged=true --name tomcat-test -d -p 8080:8080 -it tomcat-deploy 


# Exécuter le script de test à l'intérieur du conteneur
docker exec -it tomcat-test bash /data/tomcat_test.sh DEV #car «/deploy» doit est monté en tant que dossier «/data»

# Arrêter et supprimer le conteneur après les tests(pour ne pas fairre ça manuellement à chaque fois quand fait le teste)
# docker stop tomcat-test
# docker rm tomcat-test



########## le seul fichier à exécuter  ./tomcat_deploy.sh##############