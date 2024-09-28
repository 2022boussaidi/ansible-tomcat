
##############  c'est le fichier Doockerfile qui contient la liste des instructions####### 
#######qu'un conteneur devra exécuter lorsqu'il sera créé à partir de cette même image###############


# Utiliser une image de base légère
FROM ubuntu:20.04

# Mettre à jour les paquets et installer les dépendances nécessiares
RUN apt-get update && \
    apt-get install -y \
    ansible \
    curl \
    openssh-server \
    && apt-get clean



COPY . /data

# Copier  les fichiers nécessaires dans /data
COPY tomcat_test.sh /data/tomcat_test.sh
COPY tomcat_deploy.yml /data/tomcat_deploy.yml
COPY sample.war /data/sample.war
COPY inventory /data/inventory



# Point d'entrée pour exécuter les commandes
ENTRYPOINT ["/bin/bash"]


