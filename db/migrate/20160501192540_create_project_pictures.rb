class CreateProjectPictures < ActiveRecord::Migration
  def change
    create_table :project_pictures do |t|
      t.references :project, index: true, foreign_key: true
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size

      t.timestamps null: false
    end
  end
end
