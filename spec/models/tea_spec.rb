require 'rails_helper'

RSpec.describe Tea, type: :model do
  it { should have_many(:subscriptions) }
  it { should have_many(:customers).through(:subscriptions) }
  it { should validate_presence_of(:title) }
  it { should validate_uniqueness_of(:title)}
  it { should validate_presence_of(:description)}
  it { should validate_presence_of(:temperature_f)}
  it { should validate_presence_of(:brew_time_min)}
end
