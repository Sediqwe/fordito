json.extract! project, :id, :name, :www, :email, :version, :details, :created_at, :updated_at
json.url project_url(project, format: :json)
