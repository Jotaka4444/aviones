json.extract! flight, :id, :origen, :destino, :fecha, :airplane_id, :created_at, :updated_at
json.url flight_url(flight, format: :json)