json.array!(@resources) do |tax_group|
  json.extract! tax_group, :id, :name
  json.url tax_group_url(tax_group, format: :json)
end
