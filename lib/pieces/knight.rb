require './lib/pieces/piece'

class Knight
    include PiecesMethods

    BOARD_POSIITONS=[[0,1],[0,6],[7,1],[7,6]]

    def initialize
        @white_knight=" \u2658 "
        @black_knight=" \u265E "

    end

    def add_knights(board)
        board.each_with_index do |row,row_index|
            row.each_with_index do |col,col_index|
                if [row_index,col_index]==BOARD_POSIITONS[0]
                    row[col_index]=add_piece(@black_knight,row_index,col_index)
                elsif [row_index,col_index]==BOARD_POSIITONS[1]
                    row[col_index]=add_piece(@black_knight,row_index,col_index)
                elsif [row_index,col_index]==BOARD_POSIITONS[2]
                    row[col_index]=add_piece(@white_knight,row_index,col_index)
                elsif [row_index,col_index]==BOARD_POSIITONS[3]
                    row[col_index]=add_piece(@white_knight,row_index,col_index)
                end
            end
        end
    end
end