class UsersController < ApplicationController

  def show
    @favorites_dish = current_user.all_favorited

    # creer un menu si l'utilisateur n'en as pas
    if current_user.menu.nil?
      @menu = Menu.create!(user: current_user)
    end
  end

end


# def create
#   @ingredient_dishes = IngredientDish.new
#   @ingredient_dishes.menu_dish = current_user.menu_dish
#   @dish = Dish.find(params[:dish_id])
#   @ingredient_dishes.dish = @dish
#   @ingredient = Ingredient.find(params[:ingredient_id])
#   @ingredient_dishes.ingredient = @ingredient
#   if @ingredient_dishes.save
#     redirect_to user_path(current_user)
#   end
# end
