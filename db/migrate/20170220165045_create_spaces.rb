class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.references :treehouse, foreign_key: true
      t.references :space_type, foreign_key: true

      t.timestamps
    end
  end
end
