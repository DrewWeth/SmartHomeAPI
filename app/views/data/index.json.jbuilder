json.array!(@data) do |datum|
  json.extract! datum, :id, :address_id, :category, :data
  json.url datum_url(datum, format: :json)
end
