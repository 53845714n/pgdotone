class AddTextToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :text, :text
  end
end
