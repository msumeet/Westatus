json.array!(@quotes) do |quote|
  json.extract! quote, :id, :quotefie, :author
  json.url quote_url(quote, format: :json)
end
