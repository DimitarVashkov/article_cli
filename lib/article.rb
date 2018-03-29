class Article
    attr_accessor :content, :category
    attr_reader :title

    def initialize(title)
        @title = title
    end

end