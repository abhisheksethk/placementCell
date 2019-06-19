class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :compName
      t.string :hrName
      t.string :contactNumber
      t.text  :compPostalAddress
      t.string :email
      t.string :website
      t.string :ctc

      t.timestamps
    end
  end
end
