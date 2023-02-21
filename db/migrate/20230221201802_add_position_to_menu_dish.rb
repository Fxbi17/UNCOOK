class AddPositionToMenuDish < ActiveRecord::Migration[7.0]
  def change
    add_column :menu_dishes, :position, :integer
  end
end
