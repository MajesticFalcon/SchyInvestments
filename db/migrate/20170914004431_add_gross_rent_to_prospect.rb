class AddGrossRentToProspect < ActiveRecord::Migration
  def change
    add_column :prospects, :gross_rent, :integer
  end
end
