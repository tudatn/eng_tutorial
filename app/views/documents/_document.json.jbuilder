json.extract! document, :id, :name, :description, :file, :created_at, :updated_at
json.url document_url(document, format: :json)
