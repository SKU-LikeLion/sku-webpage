class CreateNotices < ActiveRecord::Migration[5.0]
  def change
    create_table :notices do |t|
      t.string :title
      t.text :content
      t.string :image , allow_nil: true
      t.timestamps
    end
  end
end
