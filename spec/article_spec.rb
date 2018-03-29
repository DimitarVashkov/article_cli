

RSpec.describe 'article class' do
    let(:article){Article.new('Something')}
    
    it 'has a title' do
        expect(article.title).to eq('Something')
    end

    it 'has a description' do 
        article.description = 'Desc of the article'
        expect(article.description).to eq 'Desc of the article'
    end

    it 'has context' do
        article.content = 'Main content of the article'
        expect(article.content).to eq 'Main content of the article'
    end
    it 'has an author' do
        article.author = 'John'
        expect(article.author).to eq 'John'
    end
    
end