require './lib/pieces/piece'

class Queen
    include PiecesMethods
    QUEEN_POSITIONS=[[0,3],[7,3]]

    def initialize
        @white_queen=" \u2655 "
        @black_queen=" \u265B "
    end

    def add_queenies(board)
        board.each_with_index do |row,row_index|
            row.each_with_index do |col,col_index|
                if [row_index,col_index]==QUEEN_POSITIONS[0]
                    row[col_index]=add_piece(@black_queen,row_index,col_index)

                elsif [row_index,col_index]==QUEEN_POSITIONS[1]
                    row[col_index]=add_piece(@white_queen,row_index,col_index)
                end
            end
        end
    end
end