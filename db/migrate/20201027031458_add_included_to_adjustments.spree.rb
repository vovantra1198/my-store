# This migration comes from spree (originally 20131118043959)
class AddIncludedToAdjustments < ActiveRecord::Migration[4.2]
  def change
    unless Spree::Adjustment.column_names.include?('included')
      add_column :spree_adjustments, :included, :boolean, default: false
    end
  end
end