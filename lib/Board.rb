  # Le tableau de jeu
  class Board
    include Enumerable
  
    attr_accessor :board
  
    def initialize
      #Quand la classe s'initialize, elle crée 9 instances BoardCases
      #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
      @board =  [*0..8].map { |i|  BoardCase.new(i).case_number }
    end
  
    def to_s
    # affiche le plateau
      puts "#{@board[0..2].join(" | ")}"
      puts "--|---|--"
      puts "#{@board[3..5].join(" | ")}"
      puts "--|---|--"
      puts "#{@board[6..8].join(" | ")}"
    end
  
    def play(symbol)
      # change la case jouée en fonction de ce qu'a joué le joueur (X, ou _)
      case_number = gets.chomp().to_i
      @board = @board.each_index.map { |e| e == case_number && @board[e] != "X" && @board[e] != "O" ? @board[e] = symbol : @board[e] }
    end
  
    def victory?
      # qui gagne : on teste si les rangées ou diagonales contiennent des symboles identiques
      if (@board[0] == @board[1] && @board[0] == @board[2]) || (@board[3] == @board[4] && @board[3] == @board[5]) || (@board[6] == @board[7] && @board[6] == @board[8] ) || (@board[0] == @board[3] && @board[0] == @board[6]) || (@board[1] == @board[4] && @board[1] == @board[7]) || (@board[2] == @board[5] && @board[2] == @board[8]) ||( @board[0] == @board[4] && @board[0] == @board[8]) || (@board[2] == @board[4] && @board[2] == @board[6])
        return true
      else
        return false
      end
    end
  
  end