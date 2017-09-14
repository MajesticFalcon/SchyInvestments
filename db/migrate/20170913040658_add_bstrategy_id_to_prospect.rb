class AddBstrategyIdToProspect < ActiveRecord::Migration
  def change
    add_column :prospects, :b_strategy_id, :integer
  end
end
