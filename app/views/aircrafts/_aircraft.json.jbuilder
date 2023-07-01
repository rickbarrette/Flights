json.extract! aircraft, :id, :tail, :make, :model, :year, :serial, :tt, :created_at, :updated_at
json.url aircraft_url(aircraft, format: :json)
