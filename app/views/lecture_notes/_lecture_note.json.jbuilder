json.extract! lecture_note, :id, :title, :content, :image, :created_at, :updated_at
json.url lecture_note_url(lecture_note, format: :json)
