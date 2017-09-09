class CreateLSurveys < ActiveRecord::Migration
  def change
    create_table :l_surveys do |t|
      t.datetime :data
      t.integer :street_num
      t.string :street_ord
      t.string :street_name
      t.string :city
      t.string :zip
      t.string :state
      t.integer :size
      t.integer :deposit
      t.integer :minimum_occupancy_time
      t.string :restrictions
      t.boolean :rented
      t.integer :rent

      t.timestamps null: false
    end
  end
end
