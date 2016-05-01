class AddMasterToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :master, :boolean
  end
end
