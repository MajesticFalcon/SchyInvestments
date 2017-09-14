class AddProspectIdToBStrategies < ActiveRecord::Migration
  def change
    add_column :b_strategies, :prospect_id, :integer
  end
end
