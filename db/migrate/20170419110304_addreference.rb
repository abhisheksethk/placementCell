class Addreference < ActiveRecord::Migration[5.0]
  def change
  	add_reference :exams, :job, index: true
  end
end
