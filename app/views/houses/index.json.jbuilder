json.array!(@houses) do |house|
  json.extract! house, :id, :typehouse, :compartment
  json.url house_url(house, format: :json)
end
