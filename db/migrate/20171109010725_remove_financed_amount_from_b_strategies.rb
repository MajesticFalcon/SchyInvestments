class RemoveFinancedAmountFromBStrategies < ActiveRecord::Migration
  def change
    remove_column :b_strategies, :financed_amount, :integer
  end
end
