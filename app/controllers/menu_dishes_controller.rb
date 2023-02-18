class MenuDishesController < ApplicationController

  def create
    @menu_dishes = MenuDish.new
    @menu_dishes.menu = current_user.menu
    @dish = Dish.find(params[:dish_id])
    @menu_dishes.dish = @dish
    if @menu_dishes.save
      redirect_to user_path(current_user)
    end
  end


end

# controleur menu_dishes
# method create dans le menu_dishes / route
#  quand tu click sa va créer un menu_dishes vide
