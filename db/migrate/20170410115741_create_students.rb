class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :studentName
      t.date :Dob
      t.string :branch
      t.float :cgpa
      t.text :subject
      t.text :language
      t.string :contact
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end
