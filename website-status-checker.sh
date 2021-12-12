#!/bin/bash

# Paramètres pour l'envoi des alertes mail
EMAIL=""
EMAILPASSWORD=""
MAILSERVER=""

# URL du site à vérifier
WEBSITE="https://acinonyxweb.agency"

# Vérification du statut d'un site, à dupliquer en remplaçant la variable si nécessaire pour vérifier plusieurs sites
if curl -s --head  --request GET $WEBSITE | grep "200" > /dev/null; then
    # Ne rien faire si le site est UP (HTTP 200)
    echo "OK"
else
    # Envoyer un mail régulièrement tant que le site est down
    swaks -t $EMAIL -s $MAILSERVER -tls -au $EMAIL --ap $PASSWORD -f $EMAIL --h-Subject "[ALERTE] Le site $WEBSITE rencontre actuellement une erreur !" --body "Le site $WEBSITE ne semble pas retourner de code HTTP 200 (OK), il semblerait donc qu'il ne soit pas accessible et rencontre une erreur liée au serveur."
fi
