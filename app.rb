require 'bundler'
Bundler.require

require_relative 'lib/game'                    # inclut la classe game
require_relative 'lib/player'                  # inclut la classe player 

player1 = Player.new("Elie")                   # création du joueur 1 
player2 = Player.new("Kauptairr")              # création du joueur 2 

puts "Player's state :"                        # affichage de l'état initial des joueurs 
player1.show_state
player2.show_state

puts "\nLets' FIGHT! :"                        # affichage du début du cbt ; \n permet d'ajouter une nouvelle ligne pour de la lisibilité séparant l'état initial de la phase d'attaque

while player1.life_points > 0 && player2.life_points > 0           # boucle while qui continue le cbt tant que les deux joueurs ont des pts de vie >0 
# la condition signifie que la boucle s'arrête dès que l'un des deux joueurs a 0 pts de vie ou moins 

  player1.attacks(player2)                       # 1 attaque 2, cette méthode appelle ensuite player2.get_damage qui va calculer les dmg subis par player 2 et réduit ses pts de vie

  break if player2.life_points <= 0              # arrêt de la boucle si 2 est mort avec le code break qui force l'arrêt de la boucle, ce qui met fin au combat, sinon, cbt continue et 2 attaquera 

  player2.attacks(player1)                       # au tour de 2 d'attaquer 1 

  puts "\nPlayer's state :"                      # affichage des états des  joueurs encore avec le \n pour un max de lisibilité 
  player1.show_state
  player2.show_state                             # ce puts récapitule l'état des joueurs avec le nb de pts de vie restant 
end
