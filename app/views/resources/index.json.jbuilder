json.array!(@resources) do |resource|
  json.extract! resource, :id, :name, :category_id, :tagline, :website
  json.url resource_url(resource, format: :json)
end
