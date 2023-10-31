class Api::V1::SubscriptionController < ApplicationController
  def new
    tea = Tea.find_by(title: params[:title])
    customer = Customer.find_by(email: params[:email])
    new_subscription = Subscription.create!(frequency_by_months: params[:frequency_by_months],
                                            price_dollars: params[:price_dollars],
                                            title: params[:title],
                                            role: params[:role],
                                            customer_id: params[:customer_id],
                                            tea_id: params[:tea_id])
    render json: SubscriptionSerializer.new(new_subscription), status: 201
  end

  def cancel

  end

  def show

  end
end