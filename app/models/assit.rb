class Assit < ApplicationRecord
  enum status: { good: 0, poor: 1, bad: 2 }
  has_many_attached :images
end
