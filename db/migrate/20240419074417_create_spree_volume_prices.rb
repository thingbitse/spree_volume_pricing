class CreateSpreeVolumePrices < ActiveRecord::Migration[7.0]
  def change
    create_table :spree_volume_prices do |t|
      t.references :variant
      t.string :name
      t.string :range
      t.decimal :amount, precision: 8, scale: 2
      t.integer :position
      t.string :discount_type
      t.references :role
      t.timestamps
    end
  end
end
