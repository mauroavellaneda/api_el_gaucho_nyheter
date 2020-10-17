require "stripe_mock"

RSpec.describe "POST /api/v1/subscriptions", type: :request do
  let(:stripe_helper) { StripeMock.create_test_helper }
  let(:valid_stripe_token) { stripe_helper.generate_card_token }

  before(:each) { StripeMock.start }
  after(:each) { StripeMock.stop }

  let(:product) { stripe_helper.create_product }
  let!(:plan) do
    stripe_helper.create_plan(
      id: 'el_g_subscription',
      amount: 10000,
      currency: 'sek',
      interval: 'month',
      interval_count: 1,
      name: 'El Gaucho Nyheter',
      product: product.id
    )
  end

  let(:user) { create(:user) }
  let(:credentials) { user.create_new_auth_token }
  let(:headers) { { HTTP_ACCEPT: "application/json" }.merge!(credentials) }

  describe "successfully with valid params" do
    before do
      post "/api/v1/subscriptions",
           params: {
             stripeToken: valid_stripe_token,
           },
           headers: headers
    end

    it "is expected to return 201 response status" do
      expect(response.status).to eq 201
    end

    it "is expected to return success message" do
      expect(response_json["message"]).to eq "Subscription successfully created!"
    end

    it "is expected to make user a subscriber" do
      expect(user.reload.subscriber?).to eq true
    end
  end
end
