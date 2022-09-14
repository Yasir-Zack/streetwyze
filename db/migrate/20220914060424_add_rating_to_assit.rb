# frozen_string_literal: true

# add rating to assit table
class AddRatingToAssit < ActiveRecord::Migration[5.2]
  def change
    add_column :assits, :rating, :integer
  end
end
