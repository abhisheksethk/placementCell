class AddPasswordDigestToStudents < ActiveRecord::Migration[5.0]
  def change
  	add_column :students, :password_digest, :string

    add_column :companies, :password_digest, :string

  end
end
