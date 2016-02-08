json.array!(@customers) do |customer|
  json.extract! customer, :id, :fname, :lname, :email, :contact_no, :birthdate
  json.url customer_url(customer, format: :json)
end
