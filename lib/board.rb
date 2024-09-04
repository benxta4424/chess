require 'colorize'

class Board
    
    def initialize
        @board=Array.new(7){Array.new(7)}
        @chess_board=[]
    end

    def is_even?(index_one,index_two)
        return true if (index_one+index_two).even?

        false
    end

    def create_board

        first_color=:light_white
        second_color=:green
        index_calculus=0

        @board.each_with_index do |item,index|
            item.each_with_index do |item2.index2|
                if is_even?(index,index2)
                    @chess_board<<"  ".colorize(background: first_color)
                else
                    @chess_board<<"  ".colorize(background: second_color)
                end
                @chess_board<<"\n"
            end
        end
          
    end

end