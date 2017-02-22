class AddColumnToTreehouses < ActiveRecord::Migration[5.0]
  def change
  	add_column :treehouses, :address, :string
  end
end
