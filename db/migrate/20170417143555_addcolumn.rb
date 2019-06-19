class Addcolumn < ActiveRecord::Migration[5.0]
  def change
  	add_column :students, :registration, :string
  end
end
