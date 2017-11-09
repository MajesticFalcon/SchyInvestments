class RemoveBestPriceFromProspects < ActiveRecord::Migration
  def change
    remove_column :b_strategies, :best_price, :integer
  end
end
