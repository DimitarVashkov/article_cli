RSpec.describe 'newspaper class' do
    let(:newspaper){ Newspaper.new }
    let(:article1){Article.new('Hello')}
    
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