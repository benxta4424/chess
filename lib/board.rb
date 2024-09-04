require 'colorize'
require './lib/pieces/rook'

class Board
    
    def initialize
        @board=Array.new(7){Array.new(7)}
        @chess_board=[]

        @first_color=:light_white
        @second_color=:green
    end

    def is_even?(index_one,index_two)
        return true if (index_one+index_two).even?

        false
    end

    def create_board
        @board.each_with_index do |row,row_index|
            row.each_with_index do |col,col_index|
                @board[row_index][col_index]=nil
            end
        end
    end

    def display_board
        @board.each_with_index do |row,row_index|
            row.each_with_index do |col,col_index|
                color=is_even?(row_index,col_index) ? @first_color : @second_color
                display_color=col.nil? ? "  " : col.to_s
                print display_color.colorize(background: color)
            end
            puts
        end
    end

    def add_rooks
        @board[0][0]=" ♖ ".colorize(background: :white)
        @board[0][7]=" ♖ ".colorize(background: :white)

        @board[7][0]=" ♜ ".colorize(background: :white)
        @board[7][7]=" ♜ ".colorize(background: :white)

    end

end