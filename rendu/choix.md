# Architecture logicielle

## Architecture Microservices vs Monolithique

|                              | Microservices                                                                                                                             | Monolithique                                                                                                               |
|------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------|
| Complexité court terme       | Peut être complexe à mettre en place en raison de la nécessité de coordonner de nombreux services distincts.                              | Relativement simple à développer et déployer initialement.                                                                 |
| Complexité long terme        | La complexité est mieux gérée, les services étant indépendants et plus faciles à mettre à jour.                                           | Devient complexe et rigide avec l'évolution et l'ajout de nouvelles fonctionnalités.                                       |
| Performances                 | Performances potentiellement meilleures grâce à la distribution de la charge entre les services, mais dépend de la qualité du réseau.     | Peut être rapide pour des applications plus petites mais peut souffrir de performances dégradées à mesure qu'elle grandit. |
| Résilience                   | Les services sont isolés, donc un problème dans un service a moins de chances d'affecter les autres.                                      | Un bug ou un problème dans une partie de l'application peut impacter l'ensemble.                                           |
| Scalabilité                  | Facilite la scalabilité horizontale (ajout de plusieurs instances de services), offrant une meilleure flexibilité.                        | Scalabilité verticale principalement (ajout de ressources à un serveur unique), ce qui peut être limitant.                 |
| Coûts & Maintenance          | Coûts initiaux plus élevés en raison de la complexité, mais maintenance potentiellement plus facile et moins coûteuse à long terme.       | Coûts initiaux plus faibles, mais la maintenance peut devenir coûteuse et difficile.                                       |
| Extensibilité & Adaptabilité | Plus facile d'ajouter, de modifier ou de supprimer des services sans perturber le système entier.                                         | L'ajout ou la modification de fonctionnalités peut être lent et difficile.                                                 |
| Sécurité                     | La séparation des services peut limiter l'impact des vulnérabilités de sécurité, mais nécessite une gestion de la sécurité plus complexe. | Un seul point de défaillance peut affecter tout le système.                                                                |

## Gestion des charges

Définition: un load balancer est une technologie conçue pour distribuer la charge de travail entre différents serveurs ou applications.

Afin de répondre au question de scalabilité, de performance et de résilience nous devons nous assurer de ne jamais saturé nos serveur ou les instances de nos serveurs. 

## UI

