class UsersController < ApplicationController

  def show
    @favorites_dish = current_user.all_favorited

    # Get all the menus of the current user
    @menus = Menu.where(user_id: current_user.id)
    # Create a hash with the ingredients and the quantity
    shopping_list = {}
    # Loop through the menus
    @menus.each do |menu|
      menu.menu_dishes.each do |ingredient|
        # If the ingredient is not in the hash, add it
        if shopping_list[ingredient.ingredient_id].nil?
          # Add the ingredient to the hash
          shopping_list[ingredient.ingredient_id] = ingredient.quantity
        # If the ingredient is in the hash, add the quantity
        else
          # Add the quantity to the hash
          shopping_list[ingredient.ingredient_id] += ingredient.quantity
        end
      end
    end
    # Create an array of the ingredients
    @shopping_list = shopping_list
  end
end
