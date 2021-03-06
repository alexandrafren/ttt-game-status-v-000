# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_index|
    if (board[win_index[0]] == "X" && board[win_index[1]] == "X" && board[win_index[2]] == "X") || (board[win_index[0]] == "O" && board[win_index[1]] == "O" && board[win_index[2]] == "O")
      return win_index
  end
end
return false
end

def full?(board)
  !board.include?(" ")
end

def draw?(board)
  if won?(board) == false && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  end
end

def winner(board)
  token = " "
  if won?(board)
    token = won?(board)
    token = board[token[0]]
  else
    return nil
  end
end
