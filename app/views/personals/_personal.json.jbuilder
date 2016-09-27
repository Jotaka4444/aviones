json.extract! personal, :id, :rut, :nombre, :cargo, :n_inlges, :correo, :telefono, :f_nacimiento, :nacionalidad, :descripcion, :created_at, :updated_at
json.url personal_url(personal, format: :json)