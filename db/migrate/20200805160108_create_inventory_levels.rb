class CreateInventoryLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :inventory_levels do |t|
      t.string :date
      t.integer :inventory_level
      t.belongs_to :product, index: true
      t.timestamps
    end
  end
end
