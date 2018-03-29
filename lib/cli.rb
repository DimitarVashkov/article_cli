require_relative 'scraper'

class Articlecli::Cli

    def initialize
        @sc = Scraper.new
    end

    def call
        @sc.create_articles
        @newspaper = @sc.newspaper
        @articles = @newspaper.articles
        start
    end

    def start
        puts 'Welcome!'
        input = ''

        while input != 'quit'
            print_commands
            input = gets.strip
            
            case input
            when "all"
                list_articles
            when "cat"
                list_category
            when "random"
                show_random_article
            when "article"
                show_article
            end
        
        end
    
        
    end


    def print_commands
        puts "To see all article titles type 'all'"
        puts "To see the category type 'cat'"
        puts "To see a random article type 'random'"
        puts "To see a specific article type 'article'"
        puts "To exit type 'quit'"
        puts '************************************'
    end

    def list_articles
        @articles.each_with_index do |x,i|
            puts '---------'
            puts "#{i+1}. #{x.title}"
            puts '---------'
        end
    end

    def list_category
        @articles.each do |x|
            puts '---------'
            puts x.category
            puts '---------'
        end

    end

    def show_random_article
        article = @articles.sample
        puts '---------'
        puts article.title
        puts '---------'
        puts article.content
        puts '---------'
    end

    def show_article
        list_articles
        puts 'Pick an article number!'
        input = gets.strip
        input = input.to_i - 1
        if input >= 0 && input < @articles.size
            puts '---------'
            puts @articles[input].title
            puts '---------'
            puts @articles[input].content
            puts '---------'
        end

    end
end