json.extract! l_survey, :id, :data, :street_num, :street_ord, :street_name, :city, :zip, :state, :size, :deposit, :minimum_occupancy_time, :restrictions, :rented, :rent, :created_at, :updated_at
json.url l_survey_url(l_survey, format: :json)
