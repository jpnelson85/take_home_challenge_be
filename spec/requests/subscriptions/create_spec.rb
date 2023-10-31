require "rails_helper"

RSpec.describe "Subscription" do
  before :each do
    @customer = Customer.create!(first_name: "John", last_name: "Doe", email: "jdoe@gmail.com", address: "123 Main St")
    @tea = Tea.create!(title: "Green Tea", description: "Green", temperature_f: 200, brew_time_min: 5)
  end

  it "creates a new subscription" do
    subscription_params = { title: "Green Tea", price_dollars: 10, frequency_by_months: 1, customer_id: @customer.id, tea_id: @tea.id }

    expect(Subscription.count).to eq(0)

    headers = { "CONTENT_TYPE" => "application/json" }
    post '/api/v1//subscribe', headers:, params: subscription_params.to_json

    expect(Subscription.count).to eq(1)

    json_response = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful
    expect(response.status).to eq(201)
    expect(json_response[:data]).to be_a(Hash)
    expect(json_response[:data]).to have_key(:id)
    expect(json_response[:data][:id]).to be_a(String)
    expect(json_response[:data]).to have_key(:type)
    expect(json_response[:data][:type]).to eq("subscription")
    expect(json_response[:data]).to have_key(:attributes)
    expect(json_response[:data][:attributes]).to be_a(Hash)
    expect(json_response[:data][:attributes]).to have_key(:title)
    expect(json_response[:data][:attributes][:title]).to be_a(String)
    expect(json_response[:data][:attributes]).to have_key(:price_dollars)
    expect(json_response[:data][:attributes][:price_dollars]).to be_a(Float)
    expect(json_response[:data][:attributes]).to have_key(:frequency_by_months)
    expect(json_response[:data][:attributes][:frequency_by_months]).to be_a(Integer)
    expect(json_response[:data][:attributes]).to have_key(:customer_id)
    expect(json_response[:data][:attributes][:customer_id]).to be_a(Integer)
    expect(json_response[:data][:attributes]).to have_key(:tea_id)
    expect(json_response[:data][:attributes][:tea_id]).to be_a(Integer)
  end
end