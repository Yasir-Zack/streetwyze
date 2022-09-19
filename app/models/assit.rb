# frozen_string_literal: true

class Assit < ApplicationRecord
  enum status: { good: 0, poor: 1, bad: 2 }
  has_many_attached :images

  def thumbnail input
    return self.images[input].variant(resize: '100x100!').processed
  end 
end
