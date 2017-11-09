class RemoveGrossRentFromProspects < ActiveRecord::Migration
  def change
    remove_column :prospects, :gross_rent, :integer
  end
end
