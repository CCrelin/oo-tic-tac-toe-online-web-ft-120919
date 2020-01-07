class TicTacToe
  
  WIN_COMBINATIONS = [
    [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]
  ]
  
  
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input) 
    input.to_i - 1
  end
  
  def move(arg1, arg2) 
    @board[arg1] = arg2
  end 
  
  def position_taken?(index) 
        if @board[index] == "X" || @board[index] == "O"
          true
        else 
          false 
        end
  end
  
  def valid_move?(input)
  !position_taken?(input).between?(1,9)
  
  
  
    
  
  end
 
  
  
  
  
  
  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end
  
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
 
end