json.extract! tweet, :id, :content, :created_at, :updated_at
json.url user_url(tweet, format: :json)
