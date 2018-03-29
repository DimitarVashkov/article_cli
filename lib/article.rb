class Article
    attr_accessor :description, :content, :author
    attr_reader :title

    def initialize(title)
        @title = title
    end

end