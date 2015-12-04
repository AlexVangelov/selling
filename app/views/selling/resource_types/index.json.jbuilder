json.array!(@resources) do |resource_type|
  json.extract! resource_type, :id, :name
  json.url resource_type_url(resource_type, format: :json)
end
