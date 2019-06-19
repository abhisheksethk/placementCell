class Newrefereceremove < ActiveRecord::Migration[5.0]
  def change
    remove_reference :companies, :student,index: true,foreign_key: true
  end
end
