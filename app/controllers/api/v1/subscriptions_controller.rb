class Api::V1::SubscriptionsController < ApplicationController
  before_action :authenticate_user!

  def create
    begin
      customer_id = get_customer(params[:stripeToken])
      subscription = Stripe::Subscription.create({ customer: customer_id, plan: "el_g_subscription" })

      status = Stripe__Invoice.retrieve(subscription.latest_invoice).paid

      if status === true
        current_user.update_attribute(:role, 'subscriber')
        render json: { message: "Subscription successfully created!"}, status: :created
      else
        render_stripe_error('You got no money!')
      end
    rescue => error
      binding.pry
    end
  end
  
  private

  def get_customer(stripe_token)
    customer = Stripe::Customer.list(email: current_user.email).data.first
    customer ||= Stripe::Customer.create({ email: current_user.email, source: stripe_token })
    customer.id
  end

  def render_stripe_error(error)
    render json: { message: "Transaction was not successfull. #{error}"}, status: 422
  end
end