class CreateSubstances < ActiveRecord::Migration[5.2]
  def change
    create_table :substances do |t|
      t.string :place
      t.string :address

      t.timestamps
    end
  end
end
