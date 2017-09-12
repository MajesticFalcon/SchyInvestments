class AddLinkedToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :linked, :boolean
  end
end
