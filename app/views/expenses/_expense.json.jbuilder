json.extract! expense, :id, :name, :value, :upfront, :frequency, :created_at, :updated_at
json.url expense_url(expense, format: :json)
