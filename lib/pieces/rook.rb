require './lib/pieces/piece'
class Rook
    include PiecesMethods

    POSITIONS=[0,7]

    def initialize
        @white_rook="♖"
        @black_rook="♜"
    end

    def add_rook(board)
        board.each_with_index do |row,row_index|
            row.each_with_index do |col,col_index|

                if row_index==0 && col_index==0
                    color=is_even?(0,0) ? first_color : second_color
                    row[col_index]=" ♜ ".colorize(background: color)

                elsif row_index==0 && col_index==7
                    color=is_even?(0,7) ? first_color : second_color
                    row[col_index]=" ♜ ".colorize(background: color)

                elsif row_index==7 && col_index==0
                    color=is_even?(7,0) ? first_color : second_color
                    row[col_index]=" ♖ ".colorize(background: color)

                elsif row_index==7 && col_index==7
                    color=is_even?(7,7) ? first_color : second_color
                    row[col_index]=" ♖ ".colorize(background: color)
                end

            end
        end
    end

    def movement
        [[0,1],[1,0],[0,-1],[-1,0]]
    end
end