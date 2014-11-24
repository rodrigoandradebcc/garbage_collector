json.array!(@donations) do |donation|
  json.extract! donation, :id, :user_id, :collection_point_id, :bonu_id, :pending, :points
  json.url donation_url(donation, format: :json)
end
