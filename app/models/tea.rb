class Tea < ApplicationRecord
  has_many :subscriptions
  has_many :customers, through: :subscriptions
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :temperature_f, presence: true
  validates :brew_time_min, presence: true
end
