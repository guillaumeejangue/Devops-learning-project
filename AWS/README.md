Créer une instance EC2 et la configurer pour un accès SSH.

## Étapes
1. Création de l’instance EC2 avec les paramètres suivants :
    - Nom : myinstance
    - AMI : Amazon Linux 2
    - Type : t3.micro
    - Groupe de sécurité : Autorisation du port SSH (22)
2. Connexion SSH avec la commande :
    - ssh -i mykey.pem ubuntu@<Public-IP>
3. Configuration post-connexion :
- Mise à jour des paquets (apt update).
- Installation d’outils (Git, curl, wget).
