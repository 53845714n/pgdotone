class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.text :description
      t.string :location
      t.boolean :highlighted
      t.boolean :active

      t.timestamps null: false
    end
  end
end
