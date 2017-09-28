class AddLatitudeToProspects < ActiveRecord::Migration
  def change
    add_column :prospects, :latitude, :float
  end
end
