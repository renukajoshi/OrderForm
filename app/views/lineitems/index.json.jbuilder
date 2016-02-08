json.array!(@lineitems) do |lineitem|
  json.extract! lineitem, :id, :name, :sku, :description, :quantity, :price
  json.url lineitem_url(lineitem, format: :json)
end
