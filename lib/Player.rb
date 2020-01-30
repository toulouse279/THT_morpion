class Player
    # La classe a deux attr_accessor : son nom, et son symbole (X ou O).
    attr_accessor :name, :symbol
    
    def initialize(name, symbol)
      # nom du joueur, symbole avec lequel il joue
      @name = name
      @symbol = symbol
    end
  
  end