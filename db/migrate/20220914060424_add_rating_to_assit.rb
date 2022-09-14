class AddRatingToAssit < ActiveRecord::Migration[5.2]
  def change
    add_column :assits, :rating, :integer
  end
end
