json.array!(@images) do |image|
  json.extract! image, :id, :title, :description, :source
  json.url image_url(image, format: :json)
end
