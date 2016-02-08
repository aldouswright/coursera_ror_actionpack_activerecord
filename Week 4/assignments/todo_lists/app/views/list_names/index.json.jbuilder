json.array!(@list_names) do |list_name|
  json.extract! list_name, :id, :list_due_date
  json.url list_name_url(list_name, format: :json)
end
