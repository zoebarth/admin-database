json.array! @bodies do |body|
  json.id body.id
  json.name body.name
  json.latitude body.latitude
  json.longitude body.longitude
  json.description body.description
  json.fish body.populations do |population|
    json.id population.fish_id
    json.name population.fish.name
    json.description population.fish.description
    if population.fish.fish_image.attached?
      json.image_url rails_blob_url(population.fish.fish_image)
    else
      json.image_url nil
    end
    json.population population.amount
  end 
end
