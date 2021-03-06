def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
board=["   ","   ","   ","   ","   ","   ","   ","   ","   "]
def input_to_index(s)
  s.to_i - 1
end
board=[" "," "," "," "," "," "," "," "," "]
def update_array_at_with(board, s, value)
  array[s]=value
end
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end
def position_taken?(board, index)
  if board[index] == " " || board[index] == nil || board[index] == ""
    false
  else
    return true
  end
end
def move(board, s , value = "X")
  board[s] = value
end
def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index=input_to_index(index)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else turn(board)
end
end
