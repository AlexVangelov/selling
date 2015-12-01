json.array!(@resources) do |origin|
  json.extract! origin, :id, :name
  json.url origin_url(origin, format: :json)
end
