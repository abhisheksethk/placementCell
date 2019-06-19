class Forforeignkeyandreference < ActiveRecord::Migration[5.0]
  def change
  	add_reference :jobs,:company,index: true
  	add_foreign_key :jobs,:companies
  	add_reference :jobs,:student,index: true
  	add_foreign_key :jobs,:students
  	add_reference :exams,:company,index: true
  	add_foreign_key :exams,:companies
  	add_reference :exams,:student,index: true
  	add_foreign_key :exams,:students
  end
end
