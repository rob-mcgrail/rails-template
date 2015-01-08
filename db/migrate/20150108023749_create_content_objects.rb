class CreateContentObjects < ActiveRecord::Migration
  def change
    create_table :content_objects do |t|
      t.string :title
      t.text :body
      t.string :origin_path
      t.string :origin_title

      t.timestamps
    end
  end
end
