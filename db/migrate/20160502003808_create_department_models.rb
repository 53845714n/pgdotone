class CreateDepartmentModels < ActiveRecord::Migration
  def change
    create_table :department_models do |t|
      t.string :department_name
      t.text :description
      t.integer :surface
      t.integer :roof
      t.integer :total_surface
      t.boolean :suite_bath, default: false
      t.boolean :active,     default: false

      t.timestamps null: false
    end
  end
end
