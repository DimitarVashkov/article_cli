RSpec.describe 'newspaper class' do
    let(:newspaper){ Newspaper.new }
    let(:article1){Article.new('Hello')}
    
    describe '#add_article' do
        context 'adding articles' do
            it 'with valid information' do
                expect(newspaper.articles.size).to eq 0
                newspaper.add_article(article1)
                expect(newspaper.articles.size).to eq 1
            end
            it 'accepts only articles' do
                expect{ newspaper.add_article('Hello') }.to raise_error StandardError
            end
        end
    end 
    describe '#articles' do
        it 'returns all articles' do
            newspaper.articles = []
            newspaper.add_article(article1)
            newspaper.add_article(article1)
            newspaper.add_article(article1)
            newspaper.add_article(article1)
            expect(newspaper.articles.size).to eq 4
        end
    end
end