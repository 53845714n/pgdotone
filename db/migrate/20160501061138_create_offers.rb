class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :image
      t.text :text
      t.boolean :active
      t.integer :order
      t.boolean :master

      t.timestamps null: false
    end
  end
end
