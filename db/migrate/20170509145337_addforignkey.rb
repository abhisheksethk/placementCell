class Addforignkey < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :applies,:jobs
  	add_foreign_key :applies,:students
  	add_foreign_key :exams,:jobs
  	add_column :pastrecords, :year, :string
  	add_column :pastrecords, :package, :string
  end
end

