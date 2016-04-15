class AddVideoToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :video, :text
  end
end
