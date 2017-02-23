class AddAttributesToTreehouses < ActiveRecord::Migration[5.0]
  def change
    add_column :treehouses, :zip_code, :string
    add_column :treehouses, :city, :string
    add_column :treehouses, :country, :string
  end
end
