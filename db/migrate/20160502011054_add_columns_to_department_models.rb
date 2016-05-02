class AddColumnsToDepartmentModels < ActiveRecord::Migration
  def change
    add_column :department_models, :bathroom, :integer
    add_column :department_models, :bedroom, :integer
    add_column :department_models, :since_uf, :integer
  end
end
