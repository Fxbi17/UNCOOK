class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.string :recipie
      t.integer :numpers

      t.timestamps
    end
  end
end
