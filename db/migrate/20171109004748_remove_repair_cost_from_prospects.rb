class RemoveRepairCostFromProspects < ActiveRecord::Migration
  def change
    remove_column :prospects, :repair_cost, :integer
  end
end
