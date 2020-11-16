RSpec.describe 'Visitor can see articles based on location', type: :request do
  let!(:journalist) { create(:user, role: 'journalist') }
  let!(:swedish_articles) { create(:article, category: 'local', location: 'Sweden', journalist_id: journalist.id) }
  let!(:american_articles) { create(:article, category: 'local', location: 'United States of America', journalist_id: journalist.id) }

  describe 'successfully Sweden' do
    before do
      get '/api/v1/articles',
          params: { location: 'Sweden' }
    end
    it 'returns a 200 response' do
      expect(response.status).to eq 200
    end
    it 'should return the correct location on articles from Sweden ' do
      expect(response_json['articles'].first['location']).to eq 'Sweden'
    end
  end

  describe 'successfully United States of America' do
    before do
      get '/api/v1/articles',
          params: { location: 'United States of America' }
    end
    it 'returns a 200 response' do
      expect(response.status).to eq 200
    end

    it 'should return the correct location on articles from United States ' do
      expect(response_json['articles'].last['location']).to eq 'United States of America'
    end
  end
end
