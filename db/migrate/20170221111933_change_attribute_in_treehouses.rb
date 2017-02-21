class ChangeAttributeInTreehouses < ActiveRecord::Migration[5.0]
  def change
  	rename_column :treehouses, :type, :category
  end
end
