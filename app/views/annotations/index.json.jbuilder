json.array!(@annotations) do |annotation|
  json.extract! annotation, :id, :body, :friend_id
  json.url annotation_url(annotation, format: :json)
end
