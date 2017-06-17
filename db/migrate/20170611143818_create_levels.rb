class CreateLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :levels do |t|
      t.string :question
      t.string :img
      t.string :hint

      t.timestamps
    end
  end
end
