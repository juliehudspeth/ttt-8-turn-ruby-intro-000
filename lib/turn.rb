def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  def input_to_index(user_input)
    user_input.to_i - 1
  end
  def valid_move?(board, index)
    if index.between(0,8) && !position_taken?(board, index)
      def move(board, index, token = "X")
        board[index] = token
      end
      display_board(board)
      turn(board)
    else using_until
      until valid_move?(board, index) == false
        turn(board)
    end
  end

def position_taken?(board, index)
  if board[index] == " " or board[index] == "" or board[index] == nil
    false
  else board[index] == "X" or board[index] == "O"
    true
  end
end
