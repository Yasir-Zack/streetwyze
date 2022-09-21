require 'csv'

# frozen_string_literal: true

class Assit < ApplicationRecord
  enum status: { good: 0, poor: 1, bad: 2 }
  has_many_attached :images

  include PgSearch::Model
  multisearchable against: [:place, :address, :category, :rating, :status]

  def thumbnail(input)
    images[input].variant(resize: '100x100!').processed
  end

  def self.to_csv
    attributes = %w[place address category story rating status]
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |assit|
        csv << attributes.map { |attr| assit.send(attr) }
      end
    end
  end
end