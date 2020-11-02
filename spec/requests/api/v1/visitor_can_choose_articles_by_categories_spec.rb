RSpec.describe Api::V1::ArticlesController, type: :request do
  let!(:journalist) { create(:user, role: 'journalist') }
  let!(:article1) { create(:article, category: 'politics', journalist_id: journalist.id) }
  let!(:article2) { create(:article, category: 'politics', journalist_id: journalist.id) }
  let!(:article3) { create(:article, category: 'sports', journalist_id: journalist.id) }

  describe 'GET /api/v1/articles - Successfully' do
    before do
      get '/api/v1/articles',
          params: { category: 'politics' }
    end

    it 'should return 200 response' do
      expect(response).to have_http_status 200
    end

    it 'should be 2 articles in new' do
      expect(response_json['articles'].count).to eq 2
    end

    it 'is expected to return news' do
      expect(response_json['articles'][0]['category']).to eq 'politics'
    
    end
  end

  describe 'GET /api/v1/articles - Successfully' do
    before do
      get '/api/v1/articles',
          params: { category: 'sports' }
    end

    it 'should be 2 articles in new' do
      expect(response_json['articles'].count).to eq 1
    end

    it 'is expected to return news' do
      expect(response_json['articles'][0]['category']).to eq 'sports'
    end
  end

  describe 'GET /api/v1/articles - Unsuccessfully' do
    before do
      get '/api/v1/articles',
          params: { category: 'food' }
    end

    it 'expected to show error message' do
      expect(response_json['error']).to eq "Sorry, we don't have that category"
    end

    it 'should return status 404' do
      expect(response).to have_http_status 404
    end
  end
end
