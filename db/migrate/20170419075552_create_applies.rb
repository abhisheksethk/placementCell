class CreateApplies < ActiveRecord::Migration[5.0]
  def change
    create_table :applies do |t|
      t.string :name

      t.timestamps
    end
  end
end
