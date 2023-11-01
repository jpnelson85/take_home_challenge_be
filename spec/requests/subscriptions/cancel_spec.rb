require "rails_helper"

RSpec.describe "Subscription Cancel" do
  before(:each) do
    @customer = Customer.create!(first_name: "John", last_name: "Doe", email: "jdoe@gmail.com", address: "123 Main St")
    @tea = Tea.create!(title: "Green Tea", description: "Green", temperature_f: 200, brew_time_min: 5)
    @subscription = Subscription.create!(title: "Green Tea", price_dollars: 10, frequency_by_months: 1, customer_id: @customer.id, tea_id: @tea.id, status: "active")
  end

  it "can cancel a subscription" do
    @update_params = { status: "cancelled" }
    expect(@subscription.status).to eq("active")

    headers = { "CONTENT_TYPE" => "application/json" }
    patch '/api/v1/subscribe', headers: headers, params: @update_params.to_json
require 'pry'; binding.pry
    @subscription.reload
    expect(@subscription.status).to eq("cancelled")
  end
end