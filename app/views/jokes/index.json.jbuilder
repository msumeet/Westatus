json.array!(@jokes) do |joke|
  json.extract! joke, :id, :jokefie
  json.url joke_url(joke, format: :json)
end
