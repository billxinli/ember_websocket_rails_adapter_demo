json.array!(@ws_v1_posts) do |ws_v1_post|
  json.extract! ws_v1_post, :id
  json.url ws_v1_post_url(ws_v1_post, format: :json)
end
