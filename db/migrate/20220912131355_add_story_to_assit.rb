# frozen_string_literal: true

# add story to assit table
class AddStoryToAssit < ActiveRecord::Migration[5.2]
  def change
    add_column :assits, :story, :string
  end
end
