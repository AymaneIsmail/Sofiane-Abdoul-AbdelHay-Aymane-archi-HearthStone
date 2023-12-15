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

## Résumé des aspects à aborder

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

- [ ] Assets servies via un CDN afin de faciliter le téléchargement par les utilisateurs de régions différentes
  - [ ] Les CDN (Content Delivery Network) permettent de rapprocher les ressources du jeu des utilisateurs en fonction de leur région
- [ ] Les joueurs ont la possibilité de choisir la langue dans laquelle ils veulent télécharger le jeu.
  - [ ] Le joueur choisi la langue dans laquelle il veut télécharger le jeu, ce qui ne télécharge que les ressources de la langue sélectionnée
  - [ ] le joueur a la possibilité de télécharger d'autres packs de langues plus tard
- [ ] Le jeu doit respecter les lois et réglementations de différentes régions, notamment en ce qui concerne la protection de la vie privée et la classification d'âge.
  - [ ] externalisation des données personnelles (authentification)
  - [ ] classification respectée pour les serveurs européens
- [ ] Les joueurs de régions différentes ne doivent pas être désavantagés (latence)
  - [ ] les joueurs sont regroupés par région
  - [ ] chaque région possède ses propres serveurs

### Gestion des charges

- [ ] Prévoir une architecture serveur capable de gérer une augmentation soudaine du nombre de joueurs
  - [ ] load balancer permettant d'équilibrer les requêtes des joueurs à travers les différents serveurs
- [ ] Le jeu doit être hautement disponible et résilient : une panne ne doit pas impacter l'expérience de jeu des joueurs
  - [ ] architecture en micro services permettant de réduire l'impact d'une panne d'un service sur les autres
- [ ] L'architecture doit être scalable et extensible

### Sécurité
- [ ] Les joueurs doivent pouvoir se connecter de manière sécurisée
  - [ ] création d'un compte de jeu unique au sein du système, géré par un service externe spécialisé
- [ ] Prévenir les abus en intégrant un système de CAPTCHA si beaucoup de tentatives de connexion
  - [ ] au bout de trois tentatives de connexion échouées, il faut remplir un CATPCHA
- [ ] Prévoir un système de protection contre la triche pour améliorer l'expérience des joueurs
  - [ ] L'utilisation d'un serveur dédié permet en partie de prévenir la triche, les requêtes sont encryptées et vérifiées pour s'assurer qu'elles sont bien envoyées par un humain
- [ ] Explorer l'utilité d'intégrer un Rate Limiter pour prévenir les abus
  - [ ] le nombre de requêtes par personne est capé afin de nous assurer qu'il s'agit bien d'un humain 

### Mises à jour
- [ ] Les mises à jour doivent être optimisée afin de ne télécharger que les éléments qui doivent être mis à jour
  - [ ] système de vérification de version au lancement du client
- [ ] Les mises à jour doivent être passives et ne pas impacter l'expérience de jeu
  - [ ] on peut réfléchir à l'intégration d'une vérification en arrière plan au lancement du système d'opération
- [ ] Les nouvelles versions du jeu sont compatibles avec les anciennes
  - [ ] les mises à jour prennent en compte les sauts de version, les joueurs peuvent mettre à jour leur jeu même si la version qu'ils utilisent est très ancienne

### Interface utilisateur et expérience de jeu
- [ ] L'interface doit être fluide
  - [ ] réactivité, mettre à jour les élements visuels de manière asynchrone afin de réduire l'impacte sur l'expérience utilisateur
- [ ] La recherche d'une partie ne doit pas interrompre le parcours de l'utilisateur
  - [ ] le joueur s'inscrit en file d'attente et peut continuer son parcours, chatter avec ses amis, faire des achats dans la boutique ou voir les dernières actualités sur la page d'accueil
- [ ] le matchmaking doit être équitable et placer des joueurs de niveau équivalent dans une même partie
  - [ ] le système de matchmaking prend en compte le classement des joueurs afin de les placer dans des parties
  - [ ] le placement est dynamique en fonction des series de victoires/ défaites afin d'ajuster au mieux le niveau au sein d'une partie
- [ ] Les joueurs doivent pouvoir se reconnecter à une partie en cas de deconnexion
  - [ ] le serveur vérifie l'existence d'une session de jeu pour le joueur lors de la connexion afin de lui permettre de s'y reconnecter
  - [ ] si le joueur déconnecte d'une partie, il est automatiquement éliminé au bout d'un certain temps, lui permettant de relancer une autre partie
- [ ] L'indisponibilité d'un service ne doit pas empêcher les utilisateurs d'utiliser les autres services disponibles

### Intégration sociale et communautaire
- [ ] Les joueurs doivent pouvoir ajouter d'autre joueurs dans leur liste d'amis
- [ ] Les joueurs peuvent communiquer avec les joueurs dans leur liste d'amis
- [ ] Les communications se font en temps réel
- [ ] Les joueurs d'une même partie peuvent échanger des réactions (émotes)

### Monétisation
- [ ] Les joueurs peuvent acheter des cosmétiques depuis la boutique en jeu
- [ ] Les paiements se font de manière sécurisée et sont disponibles indépendamment de la région de jeu
- [ ] Les articles achetés sont directement disponibles en jeu
- [ ] Les utilisateurs ont accès à un récapitulatif de leurs achats

### Feedback et support utilisateur
- [ ] Les joueurs peuvent écrire un rapport d'erreur directement depuis le jeu
- [ ] Les joueurs ont accès aux informations de status de serveur et pannes directement en jeu

### Monitoring et Logging
- [ ] Un système de monitoring pour surveiller en temps réel la santé et la performance du jeu
- [ ] Enregistrer des rapport d'erreur avec les informations utiles 
(environnement, contexte) lorsqu'une erreur se produit chez un joueur
- [ ] Logging pour enregistrer les événements clés, les erreurs et les activités suspectes, ce qui facilitera le débogage et la prévention des problèmes

### Sauvegarde et synchronisation des données
- [ ] Les données de jeu des joueurs sont sauvegardées et synchronisées de manière fiable sur les serveurs pour éviter toute perte en cas de déconnexion ou de problème technique
- [ ] Les données de jeu des joueurs doivent être disponibles rapidement et tout le temps
  - [ ] parler de backup
  - [ ] parler de replication (master - slave par exemple)

### Tests de charge et de performance
- [ ] Effectuer une batterie de tests de performances et de mises sous pression avant la mise en production pour s'assurer de la fiabilité du système
  - [ ] Monkey Chaos

### Coûts & Déploiement
- [ ] Minimiser les coûts d'infrastructure
- [ ] Les interruptions de services ne doivent pas impacter les autres services

### BackOffice
- [ ] Mettre en place un back office pour la mise à jour des caractéristiques des cartes