class CreateCreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :create_assets do |t|

      t.timestamps
    end
  end
end
