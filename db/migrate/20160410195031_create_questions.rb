class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.text :answer
      t.boolean :active, default: false
      t.integer :order

      t.timestamps null: false
    end
  end
end
