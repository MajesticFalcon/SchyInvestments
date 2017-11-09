class RemovePurchasePriceFromProspects < ActiveRecord::Migration
  def change
    remove_column :prospects, :purchase_price, :integer
  end
end
