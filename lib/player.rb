
class Player                             # création de la class "Player"
  attr_accessor :name, :life_points      # Création des deux attributs "name" et "life_points", utilisation de "attr_accessor" pour pouvoir les lire et les modifier de l'extérieur


  def initialize(name)                   # appel de la méthode initialize quand un créé un nouveau player 
    @name = name                         # le nom du joueur 
    @life_points = 10                    # le niveau de vie, 10 pts par défaut 
  end 

  def show_state                         # cette méthode affiche l'état du joueur sous la forme "machin à 000 pts de vie"
    puts "#{name} a #{@life_points} PV"
  end

  def attacks(other_player)              # cette méthode permet d'attaquer un autre joueur
    puts "#{name} attack #{other_player.name}"         # annonce de l'attaque contre un autre joueur 
    damage = compute_damage              # calcul des dommages 
    puts "He gets #{damage} points"      # annonce il va recevoir tant de dommages 
    other_player.gets_damage(damage)     # application des dommages à l'autre joueur 
  end

  def gets_damage(damage_receveid)       # cette méthode va prendre en compte le nombre de points des dgts, elle soustrait ensuite les pts à life_points 
    @life_points -= damage_receveid

    if @life_points <= 0
      puts "#{@name} IS DEAD"            # affiche du nom + est mort avec le IF si les pts de vie sont <= à 0
    end 
  end

  def compute_damage                     # méthode pour calculer les dmg infligés de manière aléatoire 
    rand(1..4)                           # rand = aléatoire, choisi un chiffre entre 1 et 4
  end
end 


