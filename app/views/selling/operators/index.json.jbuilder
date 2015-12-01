json.array!(@resources) do |operator|
  json.extract! operator, :id, :name
  json.url operator_url(operator, format: :json)
end
