json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :number, :email, :eq, :rs, :wc
  json.url contact_url(contact, format: :json)
end
