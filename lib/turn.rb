def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
    if index >= 0 && index <= 8 && position_taken?(board,index) == false
        true
    else 
        false
    end
end


def position_taken?(board, index)
    if board[index] == " " || board[index] == "" 
        false
    else 
        true
    end
end

def input_to_index(str)
    str.to_i - 1
end

def move(board, index, charachter = "X")
    board[index] = charachter
    puts board
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    valid_input = valid_move?(board, index)
    if valid_input == true
        move(board, index)
        display_board(board)
    else
        turn(board)
    end
    
end