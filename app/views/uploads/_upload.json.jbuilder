json.extract! upload, :id, :file_name, :file_ext, :file_size, :game_version, :project_id, :created_at, :updated_at
json.url upload_url(upload, format: :json)
