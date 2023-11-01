class SubscriptionSerializer
  include JSONAPI::Serializer
  attributes :title, :price_dollars, :frequency_by_months, :status

  attribute :tea do |object|
    object.tea.title
  end

  attribute :customer do |object|
    object.customer.email
  end
end