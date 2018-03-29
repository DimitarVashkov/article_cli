

RSpec.describe 'article class' do
    let(:article){Article.new('Something')}
    
    it 'has a title' do
        expect(article.title).to eq('Something')
    end

    it 'has a category' do 
        article.category = 'Desc of the article'
        expect(article.category).to eq 'Desc of the article'
    end

    it 'has content' do
        article.content = 'Main content of the article'
        expect(article.content).to eq 'Main content of the article'
    end
    
end