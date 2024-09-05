require './lib/pieces/piece'

class King
    include PiecesMethods
    KING_POSITIONS=[[0,4],[7,4]]

    def initialize
        @white_king=" \u2654 "
        @black_king=" \u265A "
    end

    def add_kingies(board)
        board.each_with_index do |row,row_index|
            row.each_with_index do |col,col_index|
                if [row_index,col_index]==KING_POSITIONS[0]
                    row[col_index]=add_piece(@black_king,row_index,col_index)

                elsif [row_index,col_index]==KING_POSITIONS[1]
                    row[col_index]=add_piece(@white_king,row_index,col_index)
                end
            end
        end
    end
end