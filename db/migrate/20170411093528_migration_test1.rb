class MigrationTest1 < ActiveRecord::Migration[5.0]
  def change
  	add_reference :students, :company, index: true
  	add_foreign_key :students, :companies
  	add_reference :companies, :student,index: true
  	add_foreign_key :companies, :students
  	
  end
end
