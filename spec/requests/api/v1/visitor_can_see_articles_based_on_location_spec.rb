RSpec.describe 'Visitor can see articles based on location', type: :request do
    let!(:swedish_articles) { 3.times { create(:article, location: 'Sweden') }}
    let!(:american_articles) { 3.times { create(:article, location: 'United States') }}

    describe 'successfully' do
        before do
            get "/api/v1/articles",
            params: {location: 'Sweden'}
        end
        it 'returns a 200 response' do
            expect(response.status).to eq 200
        end
          
          it 'returns 3 articles from Stockholm' do
            expect(response_json['articles'].count).to eq 3
        end
        it 'should return the correct location on articles ' do
            expect(response_json['articles'].first['location']).to eq 'Sweden'
        end
    end
end