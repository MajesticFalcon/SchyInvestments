class RemoveFirstDownPaymentFromBStategies < ActiveRecord::Migration
  def change
    remove_column :b_strategies, :first_down_payment, :integer
  end
end
