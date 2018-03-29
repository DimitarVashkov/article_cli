class Newspaper
    attr_reader :articles
    
    def initialize
        @articles = []
    end

    def add_article(article)

        if article.is_a? Article
            @articles << article
        else
            raise StandardError
        end
    end


end