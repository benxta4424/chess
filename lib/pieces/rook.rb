require './lib/pieces/piece'
class Rook
    include PiecesMethods

    POSITIONS=[0,7]

    def initialize
        @white_rook=" \u2656 "
        @black_rook=" \u265C "
    end

    def add_rook(board)
        board.each_with_index do |row,row_index|
            row.each_with_index do |col,col_index|

                if row_index==0 && col_index==0
                    row[col_index]=add_piece(@black_rook,row_index,col_index)

                elsif row_index==0 && col_index==7
                    row[col_index]=add_piece(@black_rook,row_index,col_index)


                elsif row_index==7 && col_index==0
                    row[col_index]=add_piece(@white_rook,row_index,col_index)

                elsif row_index==7 && col_index==7
                    row[col_index]=add_piece(@white_rook,row_index,col_index)
                end

            end
        end
    end

    def movement
        [[0,1],[1,0],[0,-1],[-1,0]]
    end
end