json.extract! upload, :id, :filename, :filext, :filesize, :fileversion, :gamename, :created_at, :updated_at
json.url upload_url(upload, format: :json)
