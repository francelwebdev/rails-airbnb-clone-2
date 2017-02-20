class CreateTreehouses < ActiveRecord::Migration[5.0]
  def change
    create_table :treehouses do |t|
      t.string :name
      t.string :type
      t.integer :capacity
      t.integer :bed_count
      t.string :location
      t.string :tree_type
      t.references :owner, foreign_key: true
      t.string :description
      t.float :rate

      t.timestamps
    end
  end
end
