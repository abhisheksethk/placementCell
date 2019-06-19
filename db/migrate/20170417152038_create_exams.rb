class CreateExams < ActiveRecord::Migration[5.0]
  def change
    create_table :exams do |t|
      t.string :examtype
      t.date :date
      t.time :time
      t.text :result

      t.timestamps
    end
  end
end
