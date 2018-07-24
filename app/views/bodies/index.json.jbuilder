json.array! @bodies do |body|
	json.id body.id
	json.name body.name
	json.latitude body.latitude
	json.longitude body.longitude
	json.description body.description

end
