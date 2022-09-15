class AddAttrToAssit < ActiveRecord::Migration[5.2]
  def change
    add_column :assits, :story, :string
    add_column :assits, :category, :string
    add_column :assits, :rating, :integer
    add_column :assits, :status, :integer
  end
end
