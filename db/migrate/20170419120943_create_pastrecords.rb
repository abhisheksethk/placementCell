class CreatePastrecords < ActiveRecord::Migration[5.0]
  def change
  	  create_table :pastrecords do |t|
      t.string :name
      t.string :registration
      t.string :stream
      t.timestamps
  end
  end
end
