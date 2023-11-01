require "rails_helper"

RSpec.describe "Subscription index Page" do
  before(:each) do
    @customer = Customer.create!(first_name: "John", last_name: "Doe", email: "jdoe@gmail.com", address: "123 Main St")
    @tea1 = Tea.create!(title: "Green Tea", description: "Green", temperature_f: 200, brew_time_min: 5)
    @tea2 = Tea.create!(title: "Red Tea", description: "Red", temperature_f: 300, brew_time_min: 5)
    @subscription1 = Subscription.create!(title: "Green Tea_jdoe", price_dollars: 10, frequency_by_months: 1, customer_id: @customer.id, tea_id: @tea1.id, status: "active")
    @subscription2 = Subscription.create!(title: "Red Tea_jdoe", price_dollars: 20, frequency_by_months: 6, customer_id: @customer.id, tea_id: @tea2.id, status: "active")
  end

  it "can show all of customer's subscriptions " do
    expect(@customer.subscriptions.count).to eq(2)

    get "/api/v1/subscribe", params: { email: @customer.email }

    expect(response).to be_successful
    expect(response.status).to eq(200)
  end

  it "errors if customer is not found" do

    get "/api/v1/subscribe", params: { email: "test email" }

    expect(response.status).to eq(400)
  end
end