FROM jupyter/base-notebook

# Donne des privilèges root
USER root

# Installer les outils nécessaires pour changer le mot de passe
RUN apt-get update && apt-get install -y passwd

# Créer un utilisateur avec un mot de passe (par exemple, "newpassword" pour l'utilisateur "jovyan")
RUN echo 'jovyan:newpassword' | chpasswd

# Remet l'utilisateur par défaut pour Binder
USER $NB_UID
