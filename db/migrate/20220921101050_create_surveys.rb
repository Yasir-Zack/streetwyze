class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.string :survey_title
      t.string :survey_script

      t.timestamps
    end
  end
end
