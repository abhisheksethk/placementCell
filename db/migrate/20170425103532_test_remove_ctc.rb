class TestRemoveCtc < ActiveRecord::Migration[5.0]
  def change
  	remove_column :companies, :ctc, :string
  end
end
