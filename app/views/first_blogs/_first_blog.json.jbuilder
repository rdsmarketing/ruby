json.extract! first_blog, :id, :title, :body, :created_at, :updated_at
json.url first_blog_url(first_blog, format: :json)
