# website-status-checker
Ce script permet de vérifier si un site ne retourne pas de code HTTP 200 afin de prévenir l'administrateur du serveur. Attention, les redirections 301/302 ne sont pas prises en compte.

## Est-ce qu'il faut installer autre chose ?
Oui, l'utilisation de ce script nécessite d'avoir installé au préalable le paquet "swaks". Sous Debian cela peut se faire via la commande : 
`sudo apt-get install -y swaks`
