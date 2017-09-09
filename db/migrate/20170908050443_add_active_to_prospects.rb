class AddActiveToProspects < ActiveRecord::Migration
  def change
    add_column :prospects, :active, :boolean
  end
end
