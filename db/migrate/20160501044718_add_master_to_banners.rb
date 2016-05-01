class AddMasterToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :master, :boolean
  end
end
