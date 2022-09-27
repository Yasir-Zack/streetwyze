# frozen_string_literal: true

require 'csv'

class Assit < ApplicationRecord
  include PgSearch::Model

  multisearchable against: [:place, :address, :category, :rating, :status]

  enum status: { good: 0, poor: 1, bad: 2 }

  has_many_attached :images

  validates :place, presence: true, format: { with: /\A[a-zA-Z\s]+\z/i, message: '* only allows letters'}
  validates :address, presence: true, format: { with: /\A[a-zA-Z0-9\s]+\z/i, message: '* can only contain letters and numbers.' }
  validates :status, :rating, presence: true
  validates :story, length: { maximum: 2000 }

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
