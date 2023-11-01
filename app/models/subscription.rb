class Subscription < ApplicationRecord
  belongs_to :customer
  belongs_to :tea
  enum status: { active: 0, cancelled: 1 }
  validates :title, presence: true, uniqueness: true
  validates :price_dollars, presence: true, numericality: { greater_than: 0 }
  validates :frequency_by_months, presence: true, numericality: { greater_than: 0 }
end
