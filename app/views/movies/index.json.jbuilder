json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :director, :rating
  json.url movie_url(movie, format: :json)
end
