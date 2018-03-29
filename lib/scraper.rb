require 'nokogiri'
require 'open-uri'
require_relative 'article'
require_relative 'newspaper'

class Scraper
    attr_reader :newspaper, :doc

    def initialize
        @newspaper = Newspaper.new
        @doc = Nokogiri::HTML(open("https://www.economist.com/sections/business-finance"))
    end

    def articles
        @doc.css("article.teaser")
    end

    def title(article)
        article.css("span.flytitle-and-title__title").text
    end

    def content(article)
        article.css("div.teaser__text").text
    end

    def category
        @doc.css("h1.simple-header__name").text
    end

    def create_articles
        cat = category
        articles.each do |x|
            article = Article.new(title(x))
            article.category = cat
            article.content = content(x)
            @newspaper.add_article(article)
        end
    end
end





# https://www.economist.com/sections/business-finance #page
# doc = Nokogiri::HTML(open("https://www.economist.com/sections/business-finance"))
# articles = doc.css("article.teaser")
# first_art = articles.first # articles.each
# first_art.css("div.teaser__text").text #description text
# first_art.css("span.flytitle-and-title__title").text # title text
# doc.css("h1.simple-header__name").text # category