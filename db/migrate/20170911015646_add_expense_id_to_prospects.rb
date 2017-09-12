class AddExpenseIdToProspects < ActiveRecord::Migration
  def change
    add_column :prospects, :expense_id, :integer
  end
end
