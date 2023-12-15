
# Définitions :

## Architecture monolithique :
### Une architecture monolithique est une application logicielle qui est conçue comme une seule unité unifiée. Tous les composants de l'application sont liés ensemble et partagent les mêmes ressources, telles que la base de données, le serveur et le langage de programmation.

## Architecture microservice :
### Une architecture microservice est une application logicielle qui est décomposée en un ensemble de petits services indépendants. Chaque service est responsable d'une fonctionnalité spécifique de l'application.

## Architecture n-tiers :
### Une architecture n-tiers est un modèle de conception de logiciels où les fonctionnalités d'une application sont séparées en plusieurs couches indépendantes, facilitant la maintenance, la scalabilité et la modularité.
Tableau comparatif :

| Critère | Architecture Microservices | Architecture Monolithique |
| ------- | -------------------------- | ------------------------- |
| **Complexité Initiale et à Long Terme** | Plus complexe initialement, mais offre une meilleure adaptabilité et facilité de maintenance à long terme. | Plus simple au départ, mais peut devenir plus complexe et moins flexible avec le temps. |
| **Performance** | Distribution efficace des ressources, améliorant les performances globales. | Performances initialement adéquates, mais peuvent diminuer avec la complexité croissante. |
| **Résilience** | Haute résillience; défaillance d'un service impacte peu les autres. | Moins résiliente ; une défaillance peut entraîner l'arrêt de l'ensemble du système. |
| **Scalabilité** | Facilement scalable, ajustement aisé des ressources. | Scalabilité limitée, changements d'échelle plus difficiles. |
| **Maintenance** | Plus aisée et modulaire, permet des mises à jour parallèles. | Peut devenir lourde avec l'augmentation de la taille et de la complexité du système. |
| **Adaptabilité** | Très adaptable aux changements technologiques et exigences du marché. | Moins adaptable, changements souvent lourds. |
| **Extensibilité** | Facile à étendre avec de nouvelles fonctionnalités. | L'extensibilité est souvent limitée, nécessitant parfois une refonte majeure. |
| **Sécurité** | Sécurisation fine et spécifique pour chaque service, mais gestion de la sécurité plus complexe. | Plus facile à sécuriser initialement, mais une faille peut affecter tout le système. |
| **Coûts** | Coûts initiaux plus élevés, mais potentiellement plus rentable à long terme. | Moins coûteux au départ, mais peut devenir plus cher à long terme, en particulier pour l'adaptation et la maintenance. |

Ce tableau offre une vue d'ensemble claire des avantages et des inconvénients de chaque architecture, aidant à comprendre pourquoi l'architecture microservices a été choisie pour notre projet de jeu.