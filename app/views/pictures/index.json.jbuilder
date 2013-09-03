json.array!(@pictures) do |picture|
  json.extract! picture, :title, :artist, :image
  json.url picture_url(picture, format: :json)
end
