require './lib/pieces/piece'

class Bishop
    include PiecesMethods

    BIDHOP_POSITIONS=[[0,2],[0,5],[7,2],[7,5]]

    def initialize
        @white_bishop=" \u2657 "
        @black_bishop=" \u265D "
    end

    def add_bishop(board)
        board.each_with_index do |row,row_index|
            row.each_with_index do |col,col_index|
                if [row_index,col_index]==BIDHOP_POSITIONS[0]
                    row[col_index]=add_piece(@black_bishop,row_index,col_index)

                elsif [row_index,col_index]==BIDHOP_POSITIONS[1]
                    row[col_index]=add_piece(@black_bishop,row_index,col_index)

                elsif [row_index,col_index]==BIDHOP_POSITIONS[2]
                    row[col_index]=add_piece(@white_bishop,row_index,col_index)

                elsif [row_index,col_index]==BIDHOP_POSITIONS[3]
                    row[col_index]=add_piece(@white_bishop,row_index,col_index)

                end
            end
        end
    end
end