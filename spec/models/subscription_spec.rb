require 'rails_helper'

RSpec.describe Subscription, type: :model do
  before(:each) do
    @customer = Customer.create!(first_name: "John", last_name: "Doe", email: "j@gmail.com", address: "123 Main St")
    @tea = Tea.create!(title: "Purple Tea", description: "Purple", temperature_f: 200, brew_time_min: 5)
    @subscription = Subscription.create!(title: "Green Tea", price_dollars: 10, frequency_by_months: 1, customer_id: @customer.id, tea_id: @tea.id)
  end
  it { should belong_to(:customer) }
  it { should belong_to(:tea) }
  it { should validate_presence_of(:title) }
  it { should validate_uniqueness_of(:title)}
  it { should validate_presence_of(:price_dollars)}
  it { should validate_presence_of(:frequency_by_months)}
  it { should validate_numericality_of(:frequency_by_months).is_greater_than(0)}
end
