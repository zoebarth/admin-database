json.array! @fishes do |f|
  json.id f.id
  json.name f.name
  json.description f.description
  json.fish_image f.fish_image
end