json.array!(@facts) do |fact|
  json.extract! fact, :id, :factfie
  json.url fact_url(fact, format: :json)
end
