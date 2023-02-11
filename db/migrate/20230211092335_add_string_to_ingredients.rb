class AddStringToIngredients < ActiveRecord::Migration[7.0]
  def change
    change_column :ingredient_dishes, :quantity, :string
  end
end
