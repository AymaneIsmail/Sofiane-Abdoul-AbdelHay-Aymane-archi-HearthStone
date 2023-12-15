# Choix des technologies:

## Gestion des régions

### Serveurs et Cloud :

Noter choix c'est porté sur le service cloud Amazon pour plusieurs raison :

1) Évolutivité et Flexibilité :
AWS permet de monter en charge de manière dynamique pour répondre à l'évolution des besoins. Les ressources peuvent être ajuster en fonction du trafic, ce qui est particulièrement important pour les jeux en ligne à forte demande.

2) Présence Mondiale 
AWS dispose de centres de données dans le monde entier, ce qui facilite le déploiement de serveurs dans différentes régions pour offrir une expérience de jeu optimale aux utilisateurs du monde entier.

3) Large Gamme de Services :
AWS propose une vaste gamme de services que nous utiliserons. 

4) Services Gérés :
De nombreux services d'AWS sont entièrement gérés, ce qui signifie qu'AWS s'occupe des tâches opérationnelles telles que la maintenance, les mises à jour de sécurité, les sauvegardes, etc.

5) Sécurité
AWS met en place des mesures de sécurité robustes, y compris la gestion des identités et des accès, le chiffrement des données, les pareeu, etc. Les développeurs peuvent tirer parti de ces fonctionnalités pour sécuriser leurs applications.

6) Tarification Flexible :
AWS propose une tarification à la demande, où vous ne payez que pour les ressources que vous utilisez. Cela permet de réduire les coûts et d'optimiser le budget en fonction des besoins réels du projet.

7) Écosystème Étendu :
AWS dispose d'un vaste écosystème de partenaires, de solutions tierces et de communautés. Cela facilite l'intégration avec d'autres services et outils couramment utilisés dans l'industrie du développement de jeux.

### Comparatif des 3 principaux services cloud

| Caractéristique                  | AWS                                   | Azure                                | GCP                                    |
|----------------------------------|---------------------------------------|--------------------------------------|----------------------------------------|
| **Présence mondiale**            | Présent dans de nombreuses régions    | Présent dans de nombreuses régions  | En expansion rapide, moins de régions  |
| **Services et Fonctionnalités**  | Large gamme de services               | Large gamme de services             | Axé sur l'innovation, populaire dans le machine learning et les données  |
| **Adaptabilité et Intégration**  | Excellente adaptabilité, intégration facile | Bien intégré avec les solutions Microsoft | Forte intégration avec des technologies open source |
| **Marché cible**                 | Utilisé par une variété d'entreprises  | Populaire dans les entreprises utilisant des technologies Microsoft | Souvent choisi pour le machine learning et l'analyse des données  |
| **Tarification**                 | Tarification à la demande, certaines charges peuvent être perçues comme plus chères | Souvent comparé à AWS en termes de coût | Connu pour des offres compétitives de tarification  |
| **Facilité d'utilisation**       | Interface utilisateur peut être perçue comme complexe | Interface utilisateur conviviale, intégration étroite avec les outils Microsoft | Interface utilisateur moderne, peut être perçu comme moins mature  |
| **Sécurité**                     | Des normes de sécurité strictes, outils avancés | Axé sur la sécurité avec des fonctionnalités telles que Azure Active Directory | Met l'accent sur la sécurité et offre des fonctionnalités avancées  |
| **Support technique**            | Offre un support de haute qualité      | Bon support technique, intégration étroite avec d'autres services Microsoft | Souvent loué pour son support technique efficace  |
| **Communauté et Écosystème**     | La plus grande communauté, abondance de tutoriels et de forums | Communauté en croissance, forte dans les entreprises utilisant des technologies Microsoft | Communauté en expansion, souvent choisi pour son innovation  |

## Authentification

Nous utilisons le service cloud Amazon qui propose un service qui permet de gérer les connections de facon sécurisé : Amazon Cognito.

Ce service intégre plusieurs modules :
 - Authentification des Utilisateurs
   - Flux d'Authentification : prise en charge de de divers flux d'authentification (email, Google, Facebook)
   - Méthodes de Connexion Multi-facteurs (MFA)
     
- Autorisation et Contrôle d'Accès 
  - Gestion des Groupes d'Utilisateurs 
  - Attributs Personnalisés

- Fonctionnalités de Sécurité :
  - Stockage des mots de passe de manière sécurisée : Cognito stocke les mots de passe de manière sécurisée à l'aide de fonctionnalités de hachage
  - Contrôles Anti-Phishing

- Gestion des profils utilisateurs
  - Stockage des profils utilisateurs
  - Synchronisation des données 

- Suivi de l'Activité Utilisateur
  - Accédez aux journaux d'utilisation et d'audit pour suivre l'activité des utilisateurs
  - Identifiez les tendances et les problèmes potentiels en analysant les connexions réussies et échouées.

## Gestion des charges

### Load balancer et Routage

### Load Balancer
Afin de répondre au question de scalabilité, de performance et de résilience nous devons nous assurer de ne jamais saturé nos serveur ou les instances de nos serveurs. 
Pour répondre à ces contraintes nous allons utiliser un load balancer.  
Celui-ci permet à un groupe de serveurs (cluster) de faire face aux pics de trafic, mais aussi de prévoir une solution de secours en cas de panne.
Nous allons utiliser <em>Traefik</em>, un service de routage et de load balancing gratuit et open source.

Le système de routage quand à lui est un mécanisme qui permet de diriger le trafic réseau vers les destinations appropriées. Ce système va permettre de rediriger les utilisateurs vers les serveurs appropriés.


### Service de Queuing


## Monitoring et Logging

Amazon CloudWatch est un service qui surveille les applicationset fournit des informations sur l'état des opérations. En collectant des données sur l'ensemble des ressources AWS, CloudWatch donne une visibilité sur les performances à l'échelle du système et permet aux utilisateurs de définir des alarmes, de réagir automatiquement aux modifications et d'obtenir une vision unifiée de l'état des opérations.

Avantages : 
  - Visualiser et analyser vos données grâce à une observabilité de bout en bout
  - Automatisation
  - Intégration simplifié avec les produits AWS
  - Rapport en temps réel

## Tests de charge et de performance

Pour les tests de charge et de performance nous utiliserons l'outil Apache JMeter qui est gratuit est Open source.

## Déploiement

1) Automatisez avec AWS CDK (Cloud Development Kit) 
AWS CDK permet de déployer des ressources AWS en utilisant des langages de programmation courants. Vous pouvez définir votre infrastructure en tant que code, ce qui facilite la création et la gestion d'environnements sur plusieurs serveurs.

2) Docker
Docker est une plateforme logicielle qui permet de créer, de gérer et de déployer des applications en conteneur.

## Interface utilisateur et expérience de jeu

Tout d'abord nous avons comparé les 3 plus gros moteur de jeu sur le marché : Unity, Unreal Engine et Godot

| Caractéristiques          | Unity                                             | Unreal Engine                                         | Godot                                         |
|---------------------------|---------------------------------------------------|--------------------------------------------------------|-----------------------------------------------|
| Langages de Programmation | C# (et JavaScript en option)                      | C++ (avec Blueprints pour la programmation visuelle) | GDScript (langage de script propre à Godot)   |
| Licence et Coût           | Gratuit (Unity Personal) avec options d'abonnement payant (Unity Pro) | Gratuit, mais des redevances sur les bénéfices au-delà d'un seuil | Open source et totalement gratuit sans restrictions |
| Graphismes et Rendu       | Solides capacités graphiques, avec un pipeline de rendu haut de gamme | Fonctionnalités graphiques exceptionnelles, rendu réaliste et effets visuels avancés | Fonctionnalités graphiques décentes, moteur 2D puissant, rendu 3D compétent |
| Facilité d'Utilisation     | Convivial, intuitive, grande communauté            | Courbe d'apprentissage plus raide, Blueprints facilitent la création sans programmation | Convivial, interface utilisateur simple, GDScript facile à apprendre |
| Flexibilité et Extensibilité | Modulaire, riche écosystème de plugins (Unity Asset Store) | Extensible avec des plugins C++, architecture modulaire | Extensible avec modules et plugins, écosystème en développement |


Nous allons choisir le moteur Unity parce qu'il possède un gros ecosystème, une enorme communauté et un module de plugin qui permet de gérer facilement des éléments complexes comme la musique ect...

## Systeme de paiment

Nous intégrerons deux systèmes de paiment :
  - Amazon Pay : Il s'intégrera facilement à nos service AWS 
  - Stripe : service le plus connu et le plus utilisé
Nous utilisions deux services distincs afin de couvrir un maximum de territoire possible et ajouter un maximum de résilience à notre CI.
