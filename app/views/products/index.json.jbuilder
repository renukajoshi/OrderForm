json.array!(@products) do |product|
  json.extract! product, :id, :name, :sku, :quantity, :length, :width, :height, :price, :company
  json.url product_url(product, format: :json)
end
