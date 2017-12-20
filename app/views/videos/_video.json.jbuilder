json.extract! video, :id, :title, :url, :description, :published_at, :thumbnail_url, :channel_title, :channel_id, :duration, :created_at, :updated_at
json.url video_url(video, format: :json)
