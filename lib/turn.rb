def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_1 - 1
  index = gets.strip
end

def valild_move?(board,index)
  if index.between(0,8) && position_taken?(board, index) == false
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " or board[index] == "" or board[index] == nil
    false
  else board[index] == "X" or board[index] == "O"
    true
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  valid_move(board, index) == true
  
    if position_taken(board, index) == false
  move(board,index,token = "X")
  display_board(board)
  turn(board)
end
