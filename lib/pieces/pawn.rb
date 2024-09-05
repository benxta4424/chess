require './lib/pieces/piece'

class Pawn
    include PiecesMethods
    PAWN_POSITIONS=[1,6]

    def initialize
        @white_pawn=" \u2659 "
        @black_pawn=" \u265F "
    end

    def add_pawnies(board)
        board.each_with_index do |row,row_index|
            counter=0
            row.each_with_index do |col,col_index|
                if row_index==PAWN_POSITIONS[0]
                    row[counter]=add_piece(@black_pawn,row_index,counter)
                    counter+=1

                elsif row_index==PAWN_POSITIONS[1]
                    row[col_index]=add_piece(@white_pawn,row_index,counter)
                    counter+=1
                end
            end
        end
    end
end