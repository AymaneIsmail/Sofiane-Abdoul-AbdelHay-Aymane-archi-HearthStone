# HearthStone Battleground

## Analyse du besoin

- [ ] Il s'agit d'un jeu de carte multijoueur en ligne
- [ ] Le jeu est disponible partout dans le monde
- [ ] Cible les personnes de plus de 13 ans
- [ ] Jeu sous modèle Free-to-play
- [ ] Un système d'achat existe permettant aux joueurs d'acheter des cosmétiques pour le jeu
- [ ] Les parties se déroulent dans une série de duels
- [ ] Les parties se jouent a 8
- [ ] Les joueurs incarnent des personnages aux caractéristiques différentes
- [ ] Les personnages possèdent un effet spécial les rendant unique
- [ ] Chaque joueur choisi un personnage parmis deux personnages aléatoires proposés en début de partie
- [ ] Les cartes peuvent être des serviteurs ou des sorts
- [ ] Il existe plusieurs type de serviteur, permettant une synergie avec les personnages
- [ ] Les parties alternes entre phase d'achat et de combat
- [ ] Le joueur commence avec 3 pièces d'or et gagne 1 pièce d'or à chaque nouvelle manche
- [ ] La partie commence par une phase d'achat
- [ ] Lors de la phase d'achat, la boutique propose une liste aléatoire de cartes au joueur
- [ ] La liste de serviteurs proposés par la boutique est renouvellée automatiquement à chaque nouvelle manche.
- [ ] Le joueur interagit avec la boutique
- [ ] Le joueur peut figer gratuitement la selection de serviteurs proposés par la boutique : la boutique ne renouvellera pas la liste de serviteurs proposés à la prochaine manche.
- [ ] Le joueur peut actualiser la selection de serviteurs proposés par la boutique
- [ ] Le joueur peut améliorer la boutique afin d'augmenter le nombre et la puissance des serviteurs proposés
- [ ] Plusieurs serviteurs identiques peuvent fusionner afin de former une version améliorée de celui-ci
- [ ] Les joueurs agencent les serviteurs sur leur plateau
- [ ] Lors d'une phase de combat, l'agencement des serviteurs, leur synergie avec le personnage joué, et les différents effets des cartes sont utilisés pour déterminer le gagnant.
- [ ] Le perdant d'une manche perd des points de vie
- [ ] La partie se termine lorsqu'il ne reste qu'un seul joueur vivant.
- [ ] Les joueurs les mieux classés durant la partie gagnent des points dans le ladder
- [ ] Les joueurs les moins bien classé durant la partie perdent des points dans le ladder
- [ ] Le ladder est un classement général des joueurs
- [ ] La ladder est déterminé à partir des points gagnés par les joueurs durant les parties

## Aspects à aborder

- [ ] Optimisation des assets du jeu
- [ ] Gestion des régions : prise en charge de différentes langues, Adaptabilité des Prix, Conformité légale et réglementaire
- [ ] Gestion des charges (scalabilité) : Architecture en Microservices
- [ ] Sécurité : Authentification
- [ ] Mises à jour incrémentielles, Gestion des versions et compatibilité ascendante
- [ ] Interface utilisateur et expérience de jeu : Matchmaking Équitable, Reconnexion en Jeu, Optimisation pour différents appareils, Analyse de données et personnalisation, Accessibilité 
- [ ] Intégration sociale et communautaire : Gestion du Temps Réel pour la Communication entre Joueurs 
- [ ] Monétisation : Gestion des Paiements par Région 
- [ ] Feedback et support utilisateur
- [ ] Monitoring et Logging
- [ ] Sauvegarde et synchronisation des données
- [ ] Tests de charge et de performance
- [ ] Déploiement : Redondance et Sauvegarde, Gestion des ressources serveur
- [ ] Coûts

### Optimisation des assets du jeu

- [ ] Utilisation de graphiques et d'animations efficaces pour réduire les temps de chargement.
  - [ ] Permettre aux joueurs de réduire les graphismes du jeu en fonction des ressources de leur appareil
- [ ] Optimisation de la taille des fichiers pour minimiser l'utilisation de la bande passante.
  - [ ] Compression des textures, des images, des ressources vidéos et musicales.
  - [ ] Stockage chez un fournisseur de services Cloud pour minimiser les coûts et faciliter la scalabilité
- [ ] Le téléchargement doit se faire de manière incrémentielle afin de permettre aux joueurs d'accéder rapidement au jeu
  - [ ] Le téléchargement des assets de client de jeu se fait en premier afin de permettre au joueur d'accéder au chat, au ladder et à la boutique
  - [ ] Le téléchargement des assets de partie se fait ensuite en arrière plan

### Gestion des régions

- [ ] Distribution des assets via un CDN pour faciliter le téléchargement dans différentes régions.
  - [ ] Les CDN (Content Delivery Network) permettent de rapprocher les ressources du jeu des utilisateurs en fonction de leur région
- [ ] Choix de la langue de téléchargement pour les joueurs.
  - [ ] Le joueur choisi la langue dans laquelle il veut télécharger le jeu, ce qui ne télécharge que les ressources de la langue sélectionnée
  - [ ] le joueur a la possibilité de télécharger d'autres packs de langues plus tard
- [ ] Conformité aux lois et réglementations régionales, notamment la protection de la vie privée.
  - [ ] externalisation des données personnelles (authentification)
  - [ ] classification respectée pour les serveurs européens
- [ ] Les joueurs de régions différentes ne doivent pas être désavantagés (latence)
  - [ ] Regroupement des joueurs par région pour minimiser la latence.

### Gestion des charges

- [ ] Architecture serveur capable de gérer une augmentation soudaine du nombre de joueurs.
  - [ ] load balancer permettant d'équilibrer les requêtes des joueurs à travers les différents serveurs
- [ ] Haute disponibilité et résilience grâce à une architecture en microservices.
  - [ ] architecture en micro services permettant de réduire l'impact d'une panne d'un service sur les autres
- [ ] Scalabilité et extensibilité de l'architecture.

### Sécurité
- [ ] Authentification sécurisée des joueurs.
  - [ ] création d'un compte de jeu unique au sein du système, géré par un service externe spécialisé
- [ ] Intégration de CAPTCHA pour prévenir les abus.
  - [ ] au bout de trois tentatives de connexion échouées, il faut remplir un CATPCHA
- [ ] Prévention de la triche avec un serveur dédié.
  - [ ] L'utilisation d'un serveur dédié permet en partie de prévenir la triche, les requêtes sont encryptées et vérifiées pour s'assurer qu'elles sont bien envoyées par un humain
- [ ] Utilisation d'un Rate Limiter pour éviter les abus.
  - [ ] le nombre de requêtes par personne est capé afin de nous assurer qu'il s'agit bien d'un humain 

### Mises à jour
- [ ] Mises à jour optimisées pour télécharger uniquement les éléments nécessaires.
  - [ ] système de vérification de version au lancement du client
- [ ] Mises à jour passives sans interruption de l'expérience de jeu.
  - [ ] on peut réfléchir à l'intégration d'une vérification en arrière plan au lancement du système d'opération
- [ ] Compatibilité ascendante avec les anciennes versions du jeu.
  - [ ] les mises à jour prennent en compte les sauts de version, les joueurs peuvent mettre à jour leur jeu même si la version qu'ils utilisent est très ancienne

### Interface utilisateur et expérience de jeu
- [ ] Interface fluide avec une réactivité asynchrone.
  - [ ] réactivité, mettre à jour les élements visuels de manière asynchrone afin de réduire l'impacte sur l'expérience utilisateur
- [ ] Recherche de partie sans interruption du parcours utilisateur.
  - [ ] le joueur s'inscrit en file d'attente et peut continuer son parcours, chatter avec ses amis, faire des achats dans la boutique ou voir les dernières actualités sur la page d'accueil
- [ ] Matchmaking équitable en fonction du classement.
  - [ ] le système de matchmaking prend en compte le classement des joueurs afin de les placer dans des parties
  - [ ] le placement est dynamique en fonction des series de victoires/ défaites afin d'ajuster au mieux le niveau au sein d'une partie
- [ ] Possibilité de reconnexion en cas de déconnexion.
  - [ ] le serveur vérifie l'existence d'une session de jeu pour le joueur lors de la connexion afin de lui permettre de s'y reconnecter
  - [ ] Possibilité de reconnexion en cas de déconnexion.
- [ ] Continuité des services en cas d'indisponibilité d'un service.

### Intégration sociale et communautaire
- [ ] Possibilité d'ajouter des amis et de communiquer en temps réel.
- [ ] Échange de réactions (émotes) entre joueurs.

### Monétisation
- [ ] Vente de cosmétiques depuis la boutique en jeu.
- [ ] Paiements sécurisés et disponibles indépendamment de la région.
- [ ] Articles achetés immédiatement disponibles en jeu.
- [ ] Historique d'achats pour les utilisateurs.

### Feedback et support utilisateur
- [ ] Rapports d'erreur depuis le jeu.
- [ ] Informations de statut du serveur et pannes accessibles en jeu.

### Monitoring et Logging
- [ ] Un système de monitoring pour surveiller en temps réel la santé et la performance du jeu
- [ ] Enregistrer des rapport d'erreur avec les informations utiles 
(environnement, contexte) pour faciliter le debogage
- [ ] Logging des événements clés, erreurs et activités suspectes.

### Sauvegarde et synchronisation des données
- [ ] Les données de jeu des joueurs sont sauvegardées et synchronisées de manière fiable sur les serveurs pour éviter toute perte en cas de déconnexion ou de problème technique
- [ ] Utilisation de backups et de réplication pour garantir la disponibilité. (master - slave)
- [ ] Disponibilité rapide des données.

### Tests de charge et de performance
- [ ] Batterie de tests de performances et de mises sous pression avant la mise en production.
  - [ ] Monkey Chaos

### Coûts & Déploiement
- [ ] Minimiser les coûts d'infrastructure
- [ ] Isolation des services pour éviter les interruptions.