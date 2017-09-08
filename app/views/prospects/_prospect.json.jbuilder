json.extract! prospect, :id, :name, :street_num, :street_name, :street_ord, :city, :zip, :state, :purchase_price, :repair_cost, :investor_id, :created_at, :updated_at
json.url prospect_url(prospect, format: :json)
