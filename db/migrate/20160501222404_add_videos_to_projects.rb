class AddVideosToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :first_video, :string
    add_column :projects, :second_video, :string
    add_column :projects, :third_video, :string
  end
end
