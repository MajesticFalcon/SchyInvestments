class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string :name
      t.integer :street_num
      t.string :street_name
      t.string :street_ord
      t.string :city
      t.integer :zip
      t.string :state
      t.integer :purchase_price
      t.integer :repair_cost
      t.integer :investor_id

      t.timestamps null: false
    end
  end
end
