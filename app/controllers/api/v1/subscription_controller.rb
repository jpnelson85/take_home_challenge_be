class Api::V1::SubscriptionController < ApplicationController
  def new
    begin
    tea = Tea.find_by(title: params[:title])
    customer = Customer.find_by(email: params[:email])
    new_subscription = Subscription.create!(frequency_by_months: params[:frequency_by_months],
                                            price_dollars: params[:price_dollars],
                                            title: params[:title],
                                            status: params[:status],
                                            customer_id: params[:customer_id],
                                            tea_id: params[:tea_id])
    render json: SubscriptionSerializer.new(new_subscription), status: 201
    rescue StandardError => e
      render json: { error: e.message }, status: 400
    end
  end

  def update
    begin
      tea = Tea.find_by(title: params[:title])
      customer = Customer.find_by(email: params[:email])
      subscription = Subscription.find_by(customer_id: customer.id, tea_id: tea.id)
      subscription.update!(status: params[:status])
      render json: SubscriptionSerializer.new(subscription), status: 200
    rescue StandardError => e
      render json: { error: e.message }, status: 400
    end

  end

  def index
    begin
      customer = Customer.find_by(email: params[:email])
      subscriptions = Subscription.where(customer_id: customer.id)
      render json: SubscriptionSerializer.new(subscriptions), status: 200
    rescue StandardError => e
      render json: { error: e.message }, status: 400
    end
  end
end