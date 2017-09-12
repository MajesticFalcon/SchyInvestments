class AddProspectIdToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :prospect_id, :integer
  end
end
