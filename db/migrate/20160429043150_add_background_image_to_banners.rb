class AddBackgroundImageToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :background_image, :text
  end
end
