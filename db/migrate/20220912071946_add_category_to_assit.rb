class AddCategoryToAssit < ActiveRecord::Migration[5.2]
  def change
    add_column :assits, :category, :string
  end
end