class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
  ]
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(user_input)
    index = user_input.to_i
    index = index -1
    return index
  end

  def move(index, character = "X")
    @board[index] = character
  end

  def position_taken?(index)
    if (@board[index] == "X" || @board[index] == "O")
      return true
    else
      return false
    end
  end

  def valid_move?(index)
    if position_taken?(index) == false && index <= 8 && index >= 0
      return true
    else
      return false
    end
  end

  def turn(user_input)
    puts: "Please enter 1-9:"
    gets.chomp = user_input
    input_to_index(user_input)
    if valid_move?(index) == true
      move(index)
      display_board(@board)
    else
      turn(board)
    end
  end


  def turn_count(@board)
  end

end
