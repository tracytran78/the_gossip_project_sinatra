# Bienvenue sur le Gossip en ligne
## Installation et utilisation
1. Placez vous où vous souhaitez cloner le Gossip en ligne
2. ```$ git clone https://github.com/DevPomeis/the_gossip_project_sinatra ```
3. ```$ cd the_gossip_project_sinatra```
4. ```$ bundle install```
5. ```$ shotgun -p 4567```
6. Allez sur la page http://localhost:4567/
## Contenu
### config.ru
C'est un fichier de configuration de Rack, qui permet, lancé avec Shotgun, de faire tourner le serveur et de tester des changements en direct
###lib
#### controller.rb
C'est tout simplement notre controller qui va gérer nos routes et les méthodes GET / POST de l'app
#### gossip.rb
C'est le fichier qui contient la classe gossip qui fait toutes les actions liées aux potins
#### db/gossip.csv
C'est la database en csv
#### views
Ce dossier contient les differentes views
## Jusqu'ou je suis allé
Jusqu'à la fin et jusqu'à rajouter une touche de css pour que ca soit mignon
## Auteur
[DevPomeis](https://github.com/DevPomeis) Théo Pomies sur Slack
