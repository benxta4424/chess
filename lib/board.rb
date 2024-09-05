require 'colorize'
require './lib/pieces/rook'
require './lib/pieces/knight'
require './lib/pieces/bishop'
require './lib/pieces/queen'

class Board
    
    def initialize
        @board=Array.new(8){Array.new(8)}
        @chess_board=[]

        @first_color=:light_white
        @second_color=:green
        @white_king=" \u2654 "
        @black_king=" \u265A "
    end

    def is_even?(index_one,index_two)
        return true if (index_one+index_two).even?

        false
    end

    def create_board
        @board.each_with_index do |row,row_index|
            row.each_with_index do |col,col_index|
                if is_even?(row_index,col_index)
                    row[col_index]="   ".colorize(background: @first_color)
                else
                    row[col_index]="   ".colorize(background: @second_color)
                end
            end
        end
    end

    def display_board
        puts " a  b  c  d  e  f  g  h"
        @board.each_with_index do |row,row_index|
            row.each_with_index do |col,col_index|
                print col
            end
            puts
        end
        puts " a  b  c  d  e  f  g  h"

    end

    def add_rooks
        rook=Rook.new
        rook.add_rook(@board)
    end
    
    def add_knights
        knight=Knight.new
        knight.add_knights(@board)
    end

    def add_bishops
        bishop=Bishop.new
        bishop.add_bishop(@board)
    end

    def add_queens
        queen=Queen.new
        queen.add_queenies(@board)
    end

end