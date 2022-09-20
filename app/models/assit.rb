# frozen_string_literal: true

class Assit < ApplicationRecord
  enum status: { good: 0, poor: 1, bad: 2 }
  has_many_attached :images

  include PgSearch::Model
  multisearchable against: [:place, :address, :category, :rating, :status]

  def thumbnail(input)
    images[input].variant(resize: '100x100!').processed
  end
end
