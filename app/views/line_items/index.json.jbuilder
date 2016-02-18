json.array!(@line_items) do |line_item|
  json.extract! line_item, :id, :name, :sku, :quantity, :price, :order_id, :product_id
  json.url line_item_url(line_item, format: :json)
end
