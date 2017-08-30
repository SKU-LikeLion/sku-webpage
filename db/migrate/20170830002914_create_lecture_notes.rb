class CreateLectureNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :lecture_notes do |t|
      t.string :title
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
