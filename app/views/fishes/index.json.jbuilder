json.array! @fishes do |f|
  json.id f.id
  json.name f.name
  json.description f.description
  if f.fish_image.attached?
    json.image_url rails_blob_url(f.fish_image)
  else
    json.image_url nil
  end
  json.bodies_of_water f.populations do |population|
    json.id population.body_id
    json.name population.body.name
    json.description population.body.description
    json.population population.amount
  end 
end