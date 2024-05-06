class CreateSpreeVolumePriceModels < ActiveRecord::Migration[7.0]
  def change
    create_table :spree_volume_price_models do |t|
      t.string :name
      t.timestamps
    end

    create_table :spree_variants_volume_price_models do |t|
      t.belongs_to :volume_price_model, index: { name: 'index_svvpm_vol_pr_mdl_id' }
      t.belongs_to :variant, index: { name: 'index_svvpm_variant_id' }
    end

    add_reference :spree_volume_prices, :volume_price_model

    # add_index :spree_variants_volume_price_models, :volume_price_model_id, name: 'index_svvpm_vol_pr_mdl_id'
    # add_index :spree_variants_volume_price_models, :variant_id, name: 'index_svvpm_variant_id'
  end
end
