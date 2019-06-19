class Test4 < ActiveRecord::Migration[5.0]
  def change
  	remove_foreign_key :students, :companies
  end
end
