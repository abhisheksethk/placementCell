class Referenceremove < ActiveRecord::Migration[5.0]
  def change
  	 remove_reference :exams, :student, index: true,foreign_key: true
  	 remove_reference :exams, :company, index: true,foreign_key: true
  end
end
