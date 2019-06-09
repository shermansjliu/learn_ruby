class Book
    #
    def initialize
        @title = ''
    end

    def title= (new_title)
        @title = ''
        conjunctions = ['for', 'and', 'but', 'or', 'yet', 'so', 'in', 'the', 'of', 'a', 'an']
        @title += "#{new_title.split(' ')[0].capitalize} "

        for word in new_title.split(' ')[1...]

            if !conjunctions.include?(word)
                word = word.capitalize
            end
            @title += "#{word} "

        end
        @title = @title[0, @title.length-1]
    end

    def title
        @title
    end
end




@book = Book.new
@book.title = "stuart little"
