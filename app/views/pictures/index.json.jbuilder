json.array!(@pictures) do |picture|
  json.extract! picture, :title, :artist, :URL
  json.url picture_url(picture, format: :json)
end
