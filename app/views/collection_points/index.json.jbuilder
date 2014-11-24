json.array!(@collection_points) do |collection_point|
  json.extract! collection_point, :id, :user_id, :address, :name, :google_address, :complement
  json.url collection_point_url(collection_point, format: :json)
end
