RSpec.describe "GET /api/v1/articles", type: :request do
  let!(:swedish_articles) do
    3.times do
      create(:article, title: "This happened in Sweden", location: "Sweden")
    end
  end
  let!(:international_articles) do
    3.times do
      create(:article, title: "This happened in United States of America", location: "International")
    end
  end

  describe "successfully location Sweden" do
    before do
      get "/api/v1/articles",
          params: {
            location: "Sweden",
          }
    end

    it "is expected to respond with ok status" do
      expect(response).to have_http_status :ok
    end

    it "is expected to return a specific article title" do
      expect(response_json["articles"].first["title"]).to eq "This happened in Sweden"
    end

    it "is expected to return articles with location: Sweden" do
      expect(response_json["articles"].third["location"]).to eq "Sweden"
    end

    it "is expected to return 3 articles" do
      expect(response_json["articles"].count).to eq 3
    end
  end

  describe "successfully returns articles with -location: International" do
    before do
      get "/api/v1/articles",
          params: {
            location: "United States of America",
          }
    end

    it "is expected to respond with ok status" do
      expect(response).to have_http_status :ok
    end

    it "is expected to return a specific article title" do
      expect(response_json["articles"].first["title"]).to eq "This happened in United States of America"
    end

    it "is expected to return articles with location: International" do
      expect(response_json["articles"].third["location"]).to eq "International"
    end

    it "is expected to return 3 articles" do
      expect(response_json["articles"].count).to eq 3
    end
  end
end
