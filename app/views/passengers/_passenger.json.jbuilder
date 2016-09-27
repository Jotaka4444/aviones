json.extract! passenger, :id, :rut, :nombre, :correo, :telefono, :f_nacimiento, :nacionalidad, :descripcion, :created_at, :updated_at
json.url passenger_url(passenger, format: :json)