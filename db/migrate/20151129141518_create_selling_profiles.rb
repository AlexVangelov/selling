class CreateSellingProfiles < ActiveRecord::Migration
  def change
    create_table :selling_profiles do |t|
      t.string :name
      t.integer :master_id
      t.string :type

      t.timestamps null: false
    end
  end
end
