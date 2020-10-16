RSpec.describe Api::V1::ArticlesController, type: :request do
    let!(:premium_article) {
        create(:article,
        premium: true,
        content: "
        British astronaut Tim Peake was among the top 10 famous figures to appear most frequently
        Stories featuring the word refugee were most frequently about the plight of children the same age as the writers leaving home and undertaking difficult journeys.
        Vineeta Gupta, Head of Children’s Dictionaries at Oxford University Press, said: “The children writing in this year’s competition have demonstrated a sophisticated use of language in their storytelling.
        They have used rich descriptions to convey emotion and have produced powerful stories that resonate with the reader."
        )
    }

    let!(:free_article) {
        create(:article,
        premium: false,
        content: "British astronaut Tim Peake was among the top 10 famous figures to appear most frequently
        Stories featuring the word refugee were most frequently about the plight of children the same age as the writers leaving home and undertaking difficult journeys."
        )
    }

    describe "Visitor should not see premium content" do
        before do
            get "/api/v1/articles/#{premium_article.id}"
        end

        it "should return a 200 response status" do
            expect(response).to have_http_status 200
        end

        it "should return shortened content" do
            expect(response_json["article"]["content"].length).to eq 50
        end
    end

    describe "Visitor should see non premium content" do
        before do
            get "/api/v1/articles/#{free_article.id}"
        end

        it "should return a 200 response status" do
            expect(response).to have_http_status 200
        end

        it "should return full content" do
            expect(response_json["article"]["content"]).to eq "British astronaut Tim Peake was among the top 10 famous figures to appear most frequently
            Stories featuring the word refugee were most frequently about the plight of children the same age as the writers leaving home and undertaking difficult journeys."    
        end
    end
end