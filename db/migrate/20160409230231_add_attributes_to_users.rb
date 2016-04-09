class AddAttributesToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :admin,  :boolean, default: false
  	add_column :users, :active, :boolean, default: false
  	add_column :users, :image,  :text
  end
end
