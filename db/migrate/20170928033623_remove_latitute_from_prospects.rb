class RemoveLatituteFromProspects < ActiveRecord::Migration
  def up
    remove_column :prospects, :latitute, :float
  end
  
  def down
    add_column :prospects, :latitute, :float
  end
end
