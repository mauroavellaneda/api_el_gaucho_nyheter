RSpec.describe 'Visitor can see articles based on location', type: :request do
    let!(:swedish_articles) { 3.times { create(:article, location: 'Sweden') }}
    let!(:american_articles) { 3.times { create(:article, location: 'United States') }}

    describe 'successfully' do
        before do
            get "/api/v1/articles",
            params: {location: 'Sweden', location: 'United States' }
        end
        it 'returns a 200 response' do
            expect(response.status).to eq 200
        end
        it 'should return the correct location on articles from Sweden ' do
            expect(response_json['articles'].first['location']).to eq 'Sweden'
        end
        it 'should return the correct location on articles from United States ' do
            expect(response_json['articles'].last['location']).to eq 'United States'
        end

    end
end