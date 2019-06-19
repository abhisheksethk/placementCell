class Removereferncetojob < ActiveRecord::Migration[5.0]
  def change
  	remove_reference :jobs, :student, index: true,foreign_key: true
  end
end
