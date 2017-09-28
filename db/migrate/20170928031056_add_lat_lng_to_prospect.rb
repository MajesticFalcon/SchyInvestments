class AddLatLngToProspect < ActiveRecord::Migration
  def change
    add_column :prospects, :latitute, :float
    add_column :prospects, :longitude, :float
  end
end
