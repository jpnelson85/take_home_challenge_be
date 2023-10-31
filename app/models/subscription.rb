class Subscription < ApplicationRecord
  enum role: { active: 0, cancelled: 1 }
end
