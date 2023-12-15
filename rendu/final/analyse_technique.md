# HearthStone Battleground

## Sommaire

- [ ] Optimisation téléchargement
- [ ] Gestion des différentes régions
- [ ] Gestion des charges (scalabilité)
- [ ] Sécurité
- [ ] Mises à jour et compatibilité
- [ ] Interface utilisateur et expérience de jeu
- [ ] Analyse de données et personnalisation
- [ ] Sauvegarde et synchronisation des données
- [ ] Accessibilité
- [ ] Intégration sociale et communautaire
- [ ] Monétisation
- [ ] Feedback et support utilisateur
- [ ] Monitoring et Logging
- [ ] Tests de charge et de performance
- [ ] Déploiement
- [ ] Coûts

### Optimisation téléchargement

> Utilisation de graphiques et d'animations efficaces pour réduire les temps de chargement.

__Solution__ :  Permettre aux joueurs de réduire les graphismes du jeu en fonction des ressources de leur appareil.

> Optimisation de la taille des fichiers pour minimiser l'utilisation de la bande passante.

__Solution__ : Compression des textures, des images, des ressources vidéos et musicales.

> Téléchargement incrémentiel pour un accès rapide au jeu.

__Solution__ : Priorisation du téléchargement des assets du client de jeu. Téléchargement en arrière-plan des assets de partie.

> Les joueurs doivent pouvoir télécharger rapidement le jeu peu importe leur région 

__Solution__ : Distribution via un CDN (Content Delivery Network) pour faciliter le téléchargement dans différentes régions.

### Gestion des différentes régions

> Choix de la langue de téléchargement pour les joueurs.

__Solution__ : Les joueurs choisissent la langue dans laquelle il veulent télécharger le jeu, ce qui ne télécharge que les ressources de la langue sélectionnée. Il aura la possibilité de télécharger d'autres packs de langues plus tard.

> Conformité aux lois et réglementations régionales, notamment la protection de la vie privée.

__Solution__ : Classification PEGI respectée pour les serveurs européens. Gestion des données personnelles externalisée.

> Regroupement des joueurs par région pour minimiser la latence.

__Solution__ : Deploiement de Clusters de jeu par région.

### Gestion des charges

> Architecture serveur capable de gérer une augmentation soudaine du nombre de joueurs.

__Solution__ : Utilisation de load balancers pour équilibrer les requêtes.

> Haute disponibilité et résilience.

__Solution__ : Architecture en micro services. Utilisation d'un API Gateway pour effectuer la 

> Scalabilité et extensibilité de l'architecture.

__Solution__ : Utilisation d'un service discovery pour faciliter l'ajout de nouveaux services.

### Sécurité

> Prévention de la triche.

__Solution__ : Utilisation d'un Rate Limiter pour éviter les abus. Les requêtes doivent être signées et encryptées.

> Authentification sécurisée.

__Solution__ : Gestion de l'authentification déléguée à un service externe spécialisé. Centralisation des appels API vers un API Gateway.

> Authorisation d'accès aux ressources.

__Solution__ : Le Gateway vérifie que les requêtes sont autorisées.

### Mises à jour et compatibilité

> Mises à jour optimisées pour télécharger uniquement les éléments nécessaires.

__Solution__ : Service de mise à jour permettant de vérifier et d'effectuer les mises à jours au lancement du client de jeu.

> Mises à jour passives sans interruption de l'expérience de jeu.

__Solution__ : Lancement du service de mise à jour en arrière plan.

> Compatibilité ascendante avec les anciennes versions du jeu.

__Solution__ : Retrocompatibilité du service de mise à jour.

### Interface utilisateur et expérience de jeu

> Interface fluide avec une réactivité asynchrone.

__Solution__ : Réactivité, mettre à jour les élements visuels de manière asynchrone.

> Recherche de partie sans interruption du parcours utilisateur.

__Solution__ : File d'attente lors d'une recherche de partie. N'interromp pas le parcours utilisateur.

> Matchmaking équitable.

__Solution__ : Prise en compte du classement du couleur, ainsi que des series de victoires et défaites.

> Possibilité de reconnexion en cas de déconnexion.

__Solution__ : Vérification de l'existence d'une session à la connexion.

> Continuité des services en cas d'indisponibilité d'un service.

__Solution__ : Service interne au client de jeu permettant de vérifier la disponibilité d'un service.

### Intégration sociale et communautaire

> Possibilité d'ajouter des amis et de communiquer en temps réel.

__Solution__ : Service de chat intégré au client de jeu. Utilisation de WebSockets pour le temps réel.

> Échange de réactions (émotes) entre joueurs.

__Solution__ : Les serveurs de jeu permettent d'échanger des émotes de manière asynchrone. WebSocket non nécessaire. 

### Sauvegarde et synchronisation des données

> Sauvegarde fiable et synchronisation des données des joueurs sur les serveurs.

__Solution__ : Synchronisation régulière des base de données régionales vers une base de données globale.

> Disponibilité rapide des données.

__Solution__ : Utilisation de base de données en mémoire lorsque possible.

> Utilisation de backups et de réplication pour garantir la disponibilité.

__Solution__ : Clusters de base de données avec replica (Master - Slave).

### Accessibilité

> Mise en place de fonctionnalités pour rendre le jeu accessible aux joueurs aux besoin spécifiques.

__Solution__ : Filtre daltonisme, lecteur vocal

> Support pour des paramètres personnalisés tels que la taille des caractères et les commandes vocales.

__Solution__ : Sous titres, police d'écriture, taille des caractères, commandes vocales, control binding, documentation en jeu ...

### Analyse de données et personnalisation

> Collecte et analyse des données de jeu pour améliorer l'expérience des joueurs.

__Solution__ : Service de collecte des données de combat afin d'équilibrer les cartes.

> Personnalisation de l'expérience en fonction des préférences et des habitudes de jeu des joueurs.

__Solution__ : Accès rapide aux ressources fréquemment utilisées par un utilisateur.

> Utilisation d'algorithmes d'apprentissage automatique pour recommander des stratégies et des cartes aux joueurs.

__Solution__ : Modèles de machine learning pour proposer aux joueurs différentes astuces et guides stratégiques.

### Monétisation

> Vente de cosmétiques depuis la boutique en jeu.

__Solution__ : Les cosmétiques ne doivent pas déséquilibrer les combats.

> Paiements sécurisés et disponibles indépendamment de la région.

__Solution__ : Services de paiements flexibles en fonction de la région.

> Fléxibilité des prix par région.

__Solution__ : Les prix sont ajustés en fonction du pouvoir d'achat moyen d'une région. Le changement de région d'un joueur doit être payant afin de réduire les abus potentiels. 

> Articles achetés immédiatement disponibles en jeu.

__Solution__ : Les cosmétiques achetés sont directement disponibles en jeu. Intégrer un service d'écoute des évènements.

> Historique d'achats pour les utilisateurs.

__Solution__ : Historique d'achat avec facture présentant les mentions légales.

### Feedback et support utilisateur

> Rapport d'erreur depuis le jeu.

__Solution__ : Les joueurs doivent pouvoir reporter un bug en jeu.

> Informations de statut du serveur et pannes accessibles en jeu.

__Solution__ : L'intérruption d'un service doit être clairement indiquée aux joueurs.

### Monitoring et Debogage

> Système de monitoring en temps réel pour la performance du jeu.

__Solution__ : Monitoring des différents services à travers l'API Gateway.

> Enregistrement de rapports d'erreur pour faciliter le débogage.

__Solution__ : Enregistrer les rapports d'erreurs en base de données (NoSQL). Enregister tout le contexte de l'erreur.

> Logging des événements clés, erreurs et activités suspectes.

__Solution__ : Voir point précédent.

### Tests de charge et de performance

> Batterie de tests de performances et de mises sous pression avant la mise en production.

__Solution__ : Ecrire des tests d'intégration, E2E et unitaires pour chaque service. Effectuer une mise sous Monkey Chaos pour vérifier la réaction du système.

### Coûts & Déploiement

> Minimisation des coûts d'infrastructure.

__Solution__ : Utilisation de services Cloud afin de réduire les coûts et ne payer que les ressources réellement utilisées.

> Automatisation du déploiement.

__Solution__ : Deploiement automatique sous Kubernetes en utilisant ArgoCD.