class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :package
      t.text :location
      t.text :critria

      t.timestamps
    end
  end
end
