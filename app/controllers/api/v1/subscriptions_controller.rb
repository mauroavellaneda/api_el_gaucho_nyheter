class Api::V1::SubscriptionsController < ApplicationController
  before_action :authenticate_user!

  def create
    begin
      customer_id = get_customer(params[:stripeToken])
      Subscription = Stripe::Subscription.create({ customer: customer_id, plan: "subscription" })
    rescue => error
      
    end
  end

  private

  def get_customer(stripe_token)
    customer = Stripe::Customer.list(email: current_user.email).data.first
    customer ||= Stripe::Customer.create({ email: current_user.email, source: stripe_token })
    customer.id
  end
end
