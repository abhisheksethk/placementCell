class ReferenceforApply < ActiveRecord::Migration[5.0]
  def change
  	add_reference :applies, :student, index: true
  	add_reference :applies, :job, index: true
  end
end
