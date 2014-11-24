json.array!(@bonus) do |bonu|
  json.extract! bonu, :id, :name, :points
  json.url bonu_url(bonu, format: :json)
end
