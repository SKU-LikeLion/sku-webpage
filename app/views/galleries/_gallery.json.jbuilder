json.extract! gallery, :id, :title, :content, :image, :created_at, :updated_at
json.url gallery_url(gallery, format: :json)
