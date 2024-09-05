module PiecesMethods
    def is_even?(index_one,index_two)
        (index_one+index_two).even?
    end

    def first_color
        :light_white
    end

    def second_color
        :green
    end

    def calculate_background_color(row_index,col_index)
        is_even?(row_index,col_index) ? first_color : second_color
    end

    def add_piece(piece,row_index,col_index)
        piece.colorize(background: calculate_background_color(row_index,col_index))
    end
end