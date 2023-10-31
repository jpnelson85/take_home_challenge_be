require "rails_helper"

RSpec.describe "Subscription", type: :request do
  before :each do
    @customer = Customer.create!(first_name: "John", last_name: "Doe", email: "jdoe@gmail.com", address: "123 Main St")
    @tea = Tea.create!(title: "Green Tea", description: "Green", temperature_f: 200, brew_time_min: 5)
  end

  it "creates a new subscription" do
    subscription_params = { title: "Green Tea", price_dollars: 10, frequency_by_months: 1, customer_id: @customer.id, tea_id: @tea.id }
    headers = { "CONTENT_TYPE" => "application/json" }

    post "/api/v1/customers/#{@customer.id}/subscriptions", params: subscription_params.to_json, headers: headers
    created_subscription = Subscription.last

    expect(response).to be_successful
    expect(response.status).to eq(201)
    expect(created_subscription.title).to eq(subscription_params[:title])
    expect(created_subscription.price_dollars).to eq(subscription_params[:price_dollars])
    expect(created_subscription.frequency_by_months).to eq(subscription_params[:frequency_by_months])
    expect(created_subscription.customer_id).to eq(subscription_params[:customer_id])
    expect(created_subscription.tea_id).to eq(subscription_params[:tea_id])
  end
end