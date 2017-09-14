class CreateComps < ActiveRecord::Migration
  def change
    create_table :comps do |t|
      t.integer :street_num
      t.string :street_name
      t.string :street_ord
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :purchase_price
      t.integer :prospect_id
      t.belongs_to :prospect, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
