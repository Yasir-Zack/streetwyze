class AddStatusToAssit < ActiveRecord::Migration[5.2]
  def change
    add_column :assits, :status, :integer
  end
end
