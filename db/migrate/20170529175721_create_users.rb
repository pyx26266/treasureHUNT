class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.text :email
      t.string :college
      t.integer :phone

      t.timestamps
    end
  end
end
