require 'colorize'
require './lib/pieces/rook'

class Board
    
    def initialize
        @board=Array.new(8){Array.new(8)}
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
                if is_even?(row_index,col_index)
                    row[col_index]="   ".colorize(background: :light_white)
                else
                    row[col_index]="   ".colorize(background: :green)
                end
            end
        end
    end

    def display_board
        @board.each_with_index do |row,row_index|
            row.each_with_index do |col,col_index|
                print col
            end
            puts
        end
    end

    def add_rooks
        rook=Rook.new
        rook.add_rook(@board)
    end

end