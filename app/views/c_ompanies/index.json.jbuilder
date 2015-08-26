json.array!(@c_ompanies) do |c_ompany|
  json.extract! c_ompany, :id, :name
  json.url c_ompany_url(c_ompany, format: :json)
end
