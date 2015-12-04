class CreateSellables < ActiveRecord::Migration
  def change
    create_table :sellables do |t|
      t.string :uuid
      t.timestamps null: false
    end
  end
end
