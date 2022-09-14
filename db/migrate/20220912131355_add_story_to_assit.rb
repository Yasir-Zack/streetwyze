class AddStoryToAssit < ActiveRecord::Migration[5.2]
  def change
    add_column :assits, :story, :string
  end
end
