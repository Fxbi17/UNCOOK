class CreateShoppingLists < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_lists do |t|
      t.references :ingredient_dish, null: false, foreign_key: true
      t.references :menu_dish, null: false, foreign_key: true

      t.timestamps
    end
  end
end
