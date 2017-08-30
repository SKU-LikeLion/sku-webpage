class CreateLectures < ActiveRecord::Migration[5.0]
  def change
    create_table :lectures do |t|
      t.string :title
      t.text :content
      t.string :video

      t.timestamps
    end
  end
end
