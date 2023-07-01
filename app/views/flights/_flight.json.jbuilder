json.extract! flight, :id, :aircraft_id, :date, :from, :to, :oil, :fuel, :tach, :hobbs, :note, :created_at, :updated_at
json.url flight_url(flight, format: :json)
