class AddColumnToLevel < ActiveRecord::Migration[5.0]
  def change
    add_column :levels, :num, :integer, index true, unique: true
    add_column :levels, :answer, :string
  end
end
