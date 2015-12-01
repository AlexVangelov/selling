class CreateSellingResourceTypes < ActiveRecord::Migration
  def change
    create_table :selling_resource_types do |t|
      t.string :name
      t.integer :master_id

      t.timestamps null: false
    end
  end
end
