Feature: Authentification
    Scenario: Création d'un compte
        Etant donné que le joueur n'a pas de compte
        Quand il clique sur le bouton de création de compte
        Alors il suis sur la page de création de compte
        Quand il rentre ses identifiants et clique sur le bouton de validation
        Alors il est redirigé vers la page de connexion
    Scenario: Connexion
        Etant donné que le joueur possède un compte
        Quand il rentre ses identifiants et clique sur le bouton de validation
        Alors il est redirigé vers la page d'accueil
    Scénario: Quitter le jeu
        Étant donné que le joueur souhaite quitter le jeu,
        Quand il appuie sur le bouton "Quitter" depuis le menu principal,
        Alors il est déconnecté de son compte et sort du jeu.

Feature: Boutique
    Scenario: Ajout d'un produit au panier
        Etant donné que le joueur possède des crédits sur son compte
        Quand il clique sur le bouton d'achat d'un produit
        Alors le produit est ajouté à son inventaire
        Et le prix du produit est débité de son compte
    Scenario: Créditer son compte
        Etant donné que Je suis sur la page d'accueil
        Quand Je clique sur le bouton de crédit
        Alors Je suis sur la page de crédit
        Quand Je rentre le montant à créditer et que je clique sur le bouton de validation
        Alors Mon compte est crédité du montant renseigné
        
Feature: Partie
    Scenario: Lancer une partie
        Etant donné que le joueur souhaite lancer une partie
        Quand il clique sur le bouton "Lancer une partie"
        Alors il est inscrit en liste d'attente
        Quand le jeu trouve d'autres joueurs
        Alors il est connecté à la Partie
    Scenario: Préparation d'une partie
        Etant donné que le joueur est connecté à une partie
        Quand tous les joueurs sont connectés à la partie
        Alors le jeu lui propre deux héros aléatoires
        Quand tous les joueurs ont choisi un héro
        Alors la partie commence
        Et cinq groupes de serviteurs aléatoires sont désactivés
        Et les joueurs entre en phase taverne
    Scenario: Phase taverne d'une partie
        Etant donné que la partie a commencé
        Quand la partie est en phase taverne
        Alors la taverne propose des serviteurs à recruter au joueur
        Quand il clique sur un serviteur proposé par la taverne
        Alors il recrute le serviteur
        Et il est débité de pièces d'or
        Quand il drag & drop un serviteur du plateau vers la taverne
        Alors il vends le serviteur
        Et il gagne des pièces d'or
        Quand il clique sur le bouton "Actualiser"
        Alors il est débité de pièces d'or
        Et la taverne lui propose de nouveaux serviteurs
        Quand il clique sur le bouton "Gel"
        Alors la taverne gèle les serviteurs proposés
        Quand le timer de la phase taverne est écoulé
        Alors les joueurs passent en phase de combat
    Scénario: Reconnexion après une déconnexion
        Étant donné qu'un joueur a été déconnecté involontairement pendant une partie
        Quand il relance le jeu et se connecte à son compte
        Alors le jeu tente automatiquement de le reconnecter à la partie en cours
    Scénario: Gagner une partie
        Étant donné que le joueur a gagné une manche de la partie
        Quand la partie se termine avec sa victoire
        Alors il gagne des points dans le ladder et peut voir son classement amélioré

Feature: Signalements
    Scénario: Signalement d'un bug
        Étant donné que le joueur a rencontré un bug dans le jeu
        Quand il accède à l'option "Signaler un Bug" dans le menu d'aide
        Alors il peut fournir des détails sur le bug et l'envoyer au support technique

Feature: Chat instantané
    Scénario: Ajouter un joueur à ses contacts
        Étant donné que le joueur souhaite ajouter un autre joueur à ses contacts
        Quand il accède à l'option "Chat" dans le menu principal
        Alors il peut ajouter un joueur à ses contacts
        Quand il clique sur le bouton "Ajouter"
        Alors le joueur est ajouté à ses contacts
    Scénario: Envoyer un message
        Étant donné que le joueur souhaite envoyer un message à un de ses contacts
        Quand il accède à l'option "Chat" dans le menu principal
        Alors il peut envoyer un message à un de ses contacts
        Quand il clique sur le bouton "Envoyer"
        Alors le message est envoyé au joueur destinataire
    Scénario: Recevoir un message
        Étant donné que le joueur a reçu un message d'un autre joueur
        Quand il accède à l'option "Chat" dans le menu principal
        Alors il peut lire le message reçu
        Quand il clique sur le bouton "Répondre"
        Alors il peut envoyer un message au joueur qui lui a envoyé le message