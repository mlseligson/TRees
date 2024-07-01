class CreateTrees < ActiveRecord::Migration[7.1]
  def change
    create_table :trees do |t|
      t.string :species
      t.integer :rings
      t.string :name

      t.timestamps
    end
  end
end
