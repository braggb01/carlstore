class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.integer :stock
      t.integer :category_id

      t.timestamps
    end
  end
end
