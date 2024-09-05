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
end