json.array!(@addresses) do |address|
  json.extract! address, :id, :permanant_addr, :office_addr, :temparary_addr, :city, :state, :country
  json.url address_url(address, format: :json)
end
