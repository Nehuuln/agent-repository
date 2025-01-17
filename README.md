# agent-repository

Bienvenue sur le Agent Repository, dans cette application se trouve un regroupement d'agent de différent jeu.

Afin d'initialiser le projet vous devez :

# Installer les dépendances Symfony

`composer install` ou `symfony composer install`
`composer require api` ou `symfony composer require api`

# Configurer le .env

Mettre la bonne database

`DATABASE_URL="mysql://root:@127.0.0.1:3306/agent_api?serverVersion=10.4.32-MariaDB&charset=utf8mb4"`
Et importer la database dans le phpMyAdmin qui se trouve dans le fichier "ressource"

# Initialiser la database

`symfony doctrine:database:create` pour être sûr que la database est bien créer

# Information sur le projet

Vous avez la possibilité d'accéder au dashboard de l'application en mettant /dashboard à la racine et ajouter/modifier des catégories et des agents.

# Participants au projet

YE Maxime
TRUGET William
DIAW Abdoul Hamid
# agent-repository
